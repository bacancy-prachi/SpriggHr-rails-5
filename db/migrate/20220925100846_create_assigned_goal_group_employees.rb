class CreateAssignedGoalGroupEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :assigned_goal_group_employees do |t|
      t.references :assigned_goal_group
      t.references :employee
      t.timestamps
    end
    add_index :assigned_goal_group_employees, :assigned_goal_group_id, name: 'agg_employee_agg_id_index'
    add_index :assigned_goal_group_employees, :employee_id, name: 'agg_employee_employee_id_index'
  end
end
