class AddTestUserIndicatorToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :test_employee, :boolean
  end
end
