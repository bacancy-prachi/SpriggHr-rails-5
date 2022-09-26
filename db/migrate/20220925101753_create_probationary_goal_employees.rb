class CreateProbationaryGoalEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :probationary_goal_employees do |t|
      t.references :employee
      t.references :probationary_goal
      t.string :progress, default: 'notstarted'

      t.timestamps
    end
    add_index :probationary_goal_employees, :employee_id
    add_index :probationary_goal_employees, :probationary_goal_id
  end
end
