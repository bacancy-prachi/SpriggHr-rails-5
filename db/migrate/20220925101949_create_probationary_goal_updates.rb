class CreateProbationaryGoalUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :probationary_goal_updates do |t|
      t.references :probationary_goal_employee
      t.string :status
      t.text :note
      t.string :response

      t.timestamps
    end
    add_index :probationary_goal_updates, :probationary_goal_employee_id
  end
end
