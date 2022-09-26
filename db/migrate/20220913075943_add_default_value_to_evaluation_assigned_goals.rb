class AddDefaultValueToEvaluationAssignedGoals < ActiveRecord::Migration[5.2]
  def change
    change_column :evaluation_assigned_goals, :skip_rating, :boolean, default: true
  end
end
