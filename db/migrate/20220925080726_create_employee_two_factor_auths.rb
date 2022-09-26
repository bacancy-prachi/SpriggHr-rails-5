class CreateEmployeeTwoFactorAuths < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_two_factor_auths do |t|
      t.references :employee
      t.boolean :two_factor_active, null: false, default: false
      t.string :two_factor_secret
      t.string :two_factor_confirmed_at
      t.integer :two_factor_failure_count, null: false, default: 0

      t.timestamps
    end
    add_index :employee_two_factor_auths, :employee_id
  end
end
