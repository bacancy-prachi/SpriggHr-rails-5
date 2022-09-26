class AddTeamGoalReferenceToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :team_goal_id, :integer
  end
end
