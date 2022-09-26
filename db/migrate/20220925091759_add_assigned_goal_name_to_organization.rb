class AddAssignedGoalNameToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :assigned_goal_name, :string, default: 'Assigned Goals'
  end
end
