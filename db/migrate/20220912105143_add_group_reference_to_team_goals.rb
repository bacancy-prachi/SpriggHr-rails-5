class AddGroupReferenceToTeamGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :team_goals, :group_id, :integer
  end
end
