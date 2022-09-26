class AddResponseToGoalUpdates < ActiveRecord::Migration[5.2]
  def change
    add_column :goal_updates, :response, :text
  end
end
