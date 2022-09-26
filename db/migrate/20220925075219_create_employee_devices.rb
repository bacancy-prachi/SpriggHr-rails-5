class CreateEmployeeDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_devices do |t|
      t.references :employee
      t.string :name
      t.string :fingerprint
      t.datetime :confirmed_at

      t.timestamps
    end
  end
end
