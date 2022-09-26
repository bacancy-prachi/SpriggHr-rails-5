class AddLeaderAssignedGoalNameToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :admin_assigned_goal_name, :string, default: 'Admin Assigned Goals'
    add_column :organizations, :leader_assigned_goal_name, :string, default: 'Leader Assigned Goals'
  end
end
