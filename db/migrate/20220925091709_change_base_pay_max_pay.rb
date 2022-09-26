class ChangeBasePayMaxPay < ActiveRecord::Migration[5.2]
  def change
    change_column :employees, :base_pay, :integer, default: 1
    change_column :employees, :max_pay, :integer, default: 2
  end
end
