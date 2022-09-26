class CreateGroupEmployeeLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :group_employee_logs do |t|
      t.references :group_employee, null: false, index: true
      t.integer :employee_id, null: false
      t.string :email
      t.string :action
      t.timestamps
    end
  end
end
