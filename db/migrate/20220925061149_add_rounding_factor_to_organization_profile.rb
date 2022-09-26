class AddRoundingFactorToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :rounding_factor, :integer, default: 0
  end
end
