class AddAlternativeSmartGoalsToOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :alternative_smart_goals, :boolean, default: 0
  end
end
