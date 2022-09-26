class AddPerformanceImprovementElectronicAccessToOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :performance_improvement_electronic_access, :boolean, default: false
  end
end
