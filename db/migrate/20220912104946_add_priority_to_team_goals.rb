class AddPriorityToTeamGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :team_goals, :priority, :integer
  end
end
