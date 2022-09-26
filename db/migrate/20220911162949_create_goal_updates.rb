class CreateGoalUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :goal_updates do |t|
      t.references :goal
      t.string :status
      t.text :note

      t.timestamps
    end
    add_index :goal_updates, :goal_id
  end
end
