class AddLeaderGoalDevPlanEditToOrganizationProfile < ActiveRecord::Migration[5.2]
  def change
    add_column :organization_profiles, :leader_goal_edit, :boolean, default: false
    add_column :organization_profiles, :leader_dev_plan_edit, :boolean, default: false
  end
end
