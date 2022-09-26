class CreateCompensations < ActiveRecord::Migration[5.2]
  def change
    create_table :compensations do |t|
      t.references :cycle
      t.references :group_budget
      t.integer :former_base_pay
      t.integer :merit_pay_increase
      t.integer :bonus_pay_increase

      t.timestamps
    end
    add_index :compensations, :cycle_id
    add_index :compensations, :group_budget_id
  end
end
