class CreateBamboohrApiIntegrations < ActiveRecord::Migration[5.2]
  def change
    create_table :bamboohr_api_integrations do |t|
      t.references :organization
      t.string :encrypted_api_key
      t.string :encrypted_api_key_iv
      t.string :subdomain
      t.timestamps
    end
    add_index :bamboohr_api_integrations, :organization_id
    add_index :bamboohr_api_integrations, :encrypted_api_key_iv, unique: true
  end
end
