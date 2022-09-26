class AddTwoFactorRequiredToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :two_factor_required, :boolean, default: 0
  end
end
