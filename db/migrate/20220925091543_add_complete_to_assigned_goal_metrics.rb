class AddCompleteToAssignedGoalMetrics < ActiveRecord::Migration[5.2]
  def change
    add_column :assigned_goal_metrics, :complete, :boolean, default: false
  end
end
