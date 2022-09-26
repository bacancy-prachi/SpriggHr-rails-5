class AddArchivedToTeamGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :team_goals, :archived, :boolean, default: false
  end
end
