class CreateAssignedGoalMetrics < ActiveRecord::Migration[5.2]
  def change
    create_table :assigned_goal_metrics do |t|
      t.references :assigned_goal
      t.string :metric_name

      t.timestamps
    end
    add_index :assigned_goal_metrics, :assigned_goal_id
  end
end
