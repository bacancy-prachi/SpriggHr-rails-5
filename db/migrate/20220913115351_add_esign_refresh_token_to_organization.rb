class AddEsignRefreshTokenToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :esign_refresh_token, :string
  end
end
