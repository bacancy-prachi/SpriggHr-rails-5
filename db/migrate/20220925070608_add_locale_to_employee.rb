class AddLocaleToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :locale, :string, default: 'en'
  end
end
