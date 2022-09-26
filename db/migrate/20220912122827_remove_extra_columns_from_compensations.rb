class RemoveExtraColumnsFromCompensations < ActiveRecord::Migration[5.2]
  def change
    remove_column :compensations, :merit_pay_increase
    remove_column :compensations, :bonus_pay_increase
    remove_column :compensations, :group_budget_id
  end
end
