class AddPayForPerformanceAccessToOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :pay_for_performance_access, :boolean, default: 0
  end
end
