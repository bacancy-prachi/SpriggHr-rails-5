class AddCompWgtStatusToEvaluations < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluations, :comp_enabled, :integer
    add_column :evaluations, :wgt_enabled, :integer
    Evaluation.all.each do |eval|
      eval.update_attributes(:wgt_enabled => 1)
      current_emp = eval.employee
      if current_emp.nil? then
        eval.update_attributes(:comp_enabled => 1)
      else
        current_org = current_emp.organization
        if current_org.settings(:competencies).enabled.to_boolean then
          eval.update_attributes(:comp_enabled => 1)
        else
          eval.update_attributes(:comp_enabled => 0)
        end
      end
    end
  end
end
