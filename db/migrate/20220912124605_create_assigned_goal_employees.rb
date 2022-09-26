class CreateAssignedGoalEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :assigned_goal_employees do |t|
      t.references :employee
      t.references :assigned_goal

      t.timestamps
    end
    add_index :assigned_goal_employees, :employee_id
    add_index :assigned_goal_employees, :assigned_goal_id
  end
end
