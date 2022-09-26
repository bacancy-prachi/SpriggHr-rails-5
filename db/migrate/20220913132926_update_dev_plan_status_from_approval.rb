class UpdateDevPlanStatusFromApproval < ActiveRecord::Migration[5.2]
  def change
    DevelopmentPlanApproval.all.each do |dpa|
      dpa.dev_item_type = 'overall'
      dpa.dev_item_id = dpa.development_plan_id
      dpa.save
    end

    DevelopmentPlan.all.each do |dp|
      revision = DevelopmentPlanApproval.where(:development_plan_id => dp.id).where(:approval_type => 'revise')
      dp.status = 'revised' unless revision.empty?
      approval = DevelopmentPlanApproval.where(:development_plan_id => dp.id).where(:approval_type => 'approved')
      dp.status = 'approved' unless approval.empty?
      dp.save
    end
  end
end
