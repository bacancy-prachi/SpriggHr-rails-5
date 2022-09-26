class AddApplicationTypeToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :application_type, :string
  end
end
