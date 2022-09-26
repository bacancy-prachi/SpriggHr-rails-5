class AddDefaultValueToEvaluationAssignedGoal < ActiveRecord::Migration[5.2]
  def change
    change_column :evaluation_assigned_goals, :rating, :integer, default: 0
    change_column :evaluation_assigned_goals, :skip_rating, :boolean, default: 0
  end
end
