class CreateGoalMilestoneMetrics < ActiveRecord::Migration[5.2]
  def change
    create_table :goal_milestone_metrics do |t|
      t.references :goal_milestone
      t.references :goal_metric

      t.timestamps
    end
    add_index :goal_milestone_metrics, :goal_milestone_id
    add_index :goal_milestone_metrics, :goal_metric_id
  end
end
