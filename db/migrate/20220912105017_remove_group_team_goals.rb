class RemoveGroupTeamGoals < ActiveRecord::Migration[5.2]
  def change
    drop_table :group_team_goals
  end
end
