class UpdateGoalEvalItemsToIncludeDeadline < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluation_goals, :deadline, :date, null:true
    add_column :evaluation_assigned_goals, :deadline, :date, null:true
    add_column :evaluation_team_goals, :deadline, :date, null:true

    EvaluationGoal.all.each do |eg|
      unless eg.goal.nil?
        eg.update_attributes(deadline: eg.goal.deadline)
      end
    end

    EvaluationAssignedGoal.all.each do |eag|
      unless eag.assigned_goal.nil?
        eag.update_attributes(deadline: eag.assigned_goal.deadline)
      end
    end

    EvaluationTeamGoal.all.each do |etg|
      unless etg.team_goal.nil?
        etg.update_attributes(deadline: etg.team_goal.deadline)
      end
    end
  end
end
