class CreateAdjustments < ActiveRecord::Migration[5.2]
  def change
    create_table :adjustments do |t|
      t.references :compensation
      t.references :group_budget
      t.integer :merit_pay_increase
      t.integer :bonus_pay_increase

      t.timestamps
    end
    add_index :adjustments, :compensation_id
    add_index :adjustments, :group_budget_id
  end
end
