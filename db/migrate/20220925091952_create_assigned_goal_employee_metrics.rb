class CreateAssignedGoalEmployeeMetrics < ActiveRecord::Migration[5.2]
  def change
    create_table :assigned_goal_employee_metrics do |t|
      t.references :assigned_goal_employee
      t.string :metric_name
      t.boolean :complete, default: false

      t.timestamps
    end
    add_index :assigned_goal_employee_metrics, :assigned_goal_employee_id, name: 'ag_employee_metrics_ag_employee_index'
  end
end
