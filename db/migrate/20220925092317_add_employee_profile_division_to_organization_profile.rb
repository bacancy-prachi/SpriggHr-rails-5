class AddEmployeeProfileDivisionToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :employee_profile_division, :boolean, null: false, default: false
  end
end
