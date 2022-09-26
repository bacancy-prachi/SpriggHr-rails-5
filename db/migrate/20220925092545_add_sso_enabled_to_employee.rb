class AddSsoEnabledToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :sso_enabled, :boolean, default: false
  end
end
