class AddEnabledToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :enabled, :boolean, default: 1
  end
end
