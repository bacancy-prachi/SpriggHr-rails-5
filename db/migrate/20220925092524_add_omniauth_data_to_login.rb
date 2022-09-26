class AddOmniauthDataToLogin < ActiveRecord::Migration[5.2]
  def change
    add_column :logins, :omniauth_data, :string, default: nil
  end
end
