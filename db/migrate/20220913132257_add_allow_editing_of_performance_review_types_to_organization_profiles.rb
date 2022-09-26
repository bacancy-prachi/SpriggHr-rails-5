class AddAllowEditingOfPerformanceReviewTypesToOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :allow_editing_of_performance_review_types, :boolean, default: false
  end
end
