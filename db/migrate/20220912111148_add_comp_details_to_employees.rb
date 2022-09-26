class AddCompDetailsToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :base_pay, :integer
    add_column :employees, :max_pay, :integer
  end
end
