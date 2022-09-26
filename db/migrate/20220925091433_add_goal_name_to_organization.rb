class AddGoalNameToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :goal_name, :string, default: 'Goals'
  end
end
