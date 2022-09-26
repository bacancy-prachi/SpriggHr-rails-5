class AddFullEvaluationToEvaluationAssignedGoal < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluation_assigned_goals, :full_evaluation, :boolean, default: true
  end
end
