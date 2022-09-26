class AddGoalProgressPeriodToUpdates < ActiveRecord::Migration[5.2]
  def change
    add_column :goal_updates, :goal_progress_period_id, :integer
    add_column :assigned_goal_updates, :goal_progress_period_id, :integer
    add_index :goal_updates, :goal_progress_period_id
    add_index :assigned_goal_updates, :goal_progress_period_id
  end
end
