class AddApiKeyToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :api_key, :string

    Organization.all.each do |org|
      org.update_attribute('api_key', Authlogic::Random.friendly_token)
    end
  end
end
