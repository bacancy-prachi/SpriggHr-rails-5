class AddDeadlineToTeamGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :team_goals, :deadline, :date
  end
end
