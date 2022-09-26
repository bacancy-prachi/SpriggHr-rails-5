class AddThreesixtyOptionsToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :threesixty_performance_ratings, :boolean, default: false
    add_column :organization_profiles, :employee_driven_threesixty_reviews, :boolean, default: false
  end
end
