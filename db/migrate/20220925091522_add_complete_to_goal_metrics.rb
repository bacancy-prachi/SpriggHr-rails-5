class AddCompleteToGoalMetrics < ActiveRecord::Migration[5.2]
  def change
    add_column :goal_metrics, :complete, :boolean, default: false
  end
end
