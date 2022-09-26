class CreateGroupEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :group_employees do |t|
      t.references :group
      t.references :employee
      t.string :role, default: 'member'

      t.timestamps
    end
    add_index :group_employees, :employee_id
    add_index :group_employees, :group_id
  end
end
