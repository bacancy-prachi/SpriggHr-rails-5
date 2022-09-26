class CreateEmployeeTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_tasks do |t|
      t.references :employee
      t.string :name
      t.datetime :start_point
      t.datetime :end_point
      t.boolean :all_day

      t.timestamps
    end
    add_index :employee_tasks, :employee_id
  end
end
