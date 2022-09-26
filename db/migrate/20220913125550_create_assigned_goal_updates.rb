class CreateAssignedGoalUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :assigned_goal_updates do |t|
      t.references :assigned_goal_employee
      t.string :status
      t.text :note
      t.text :response

      t.timestamps
    end
    add_index :assigned_goal_updates, :assigned_goal_employee_id
  end
end
