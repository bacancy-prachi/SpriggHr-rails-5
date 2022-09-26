class AddAuthyDataToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :phone_number, :string
    add_column :employees, :country_code, :string
  end
end
