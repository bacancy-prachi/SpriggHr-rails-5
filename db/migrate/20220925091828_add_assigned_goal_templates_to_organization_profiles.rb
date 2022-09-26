class AddAssignedGoalTemplatesToOrganizationProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :assigned_goal_templates, :boolean, default: false
  end
end
