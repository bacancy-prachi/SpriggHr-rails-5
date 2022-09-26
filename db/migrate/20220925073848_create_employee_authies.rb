class CreateEmployeeAuthies < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_authies do |t|
      t.references :employee

      t.string   "authy_id"
      t.integer  "authy_status", default: 0, null: false
      t.string   "uuid"
      t.boolean  "confirmed", default: false, nil: false

      t.timestamps
    end
    add_index :employee_authies, :employee_id
  end
end
