class CreateProbationaryGoalMetrics < ActiveRecord::Migration[5.2]
  def change
    create_table :probationary_goal_metrics do |t|
      t.references :probationary_goal
      t.string :metric_name
      t.boolean :complete, default: false

      t.timestamps
    end
    add_index :probationary_goal_metrics, :probationary_goal_id
  end
end
