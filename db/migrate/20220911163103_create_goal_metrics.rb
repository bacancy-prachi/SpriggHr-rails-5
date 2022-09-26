class CreateGoalMetrics < ActiveRecord::Migration[5.2]
  def change
    create_table :goal_metrics do |t|
      t.string :metric_name
      t.references :goal

      t.timestamps
    end
  end
end
