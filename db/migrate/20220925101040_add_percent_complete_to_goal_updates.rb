class AddPercentCompleteToGoalUpdates < ActiveRecord::Migration[5.2]
  def change
    add_column :goal_updates, :percent_complete, :integer
  end
end
