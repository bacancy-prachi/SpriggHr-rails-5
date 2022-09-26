class CreateProbationaryGoalEmployeeMetrics < ActiveRecord::Migration[5.2]
  def change
    create_table :probationary_goal_employee_metrics do |t|
      t.references :probationary_goal_employee, index: { name: 'prob_goal_emp_id_index'}
      t.string :metric_name
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end
