class AddHaysCsvIntegrationToOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :hays_csv_integration, :boolean, default: false
  end
end
