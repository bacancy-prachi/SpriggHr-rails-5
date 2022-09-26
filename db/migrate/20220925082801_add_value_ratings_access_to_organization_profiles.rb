class AddValueRatingsAccessToOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :value_ratings_access, :boolean, default: false
  end
end
