class CreateGroupBudgets < ActiveRecord::Migration[5.2]
  def change
    create_table :group_budgets do |t|
      t.references :group
      t.integer :year
      t.integer :merit_pay
      t.integer :bonus_pay
      t.string :status

      t.timestamps
    end
    add_index :group_budgets, :group_id
  end
end
