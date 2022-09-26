class CreateCompensationRangeEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :compensation_range_employees do |t|
      t.references :employee
      t.references :compensation_range_template
      t.timestamps
    end
    add_index :compensation_range_employees, :employee_id
    add_index :compensation_range_employees, :compensation_range_template_id, name: 'index_comp_range_employees_on_comp_range_template_id'
  end
end
