class AddProbationaryGoalNameToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :probationary_goal_name, :string, default: 'Probationary Goals'
  end
end
