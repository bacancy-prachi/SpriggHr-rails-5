class AddTeamGoalAlignmentToTeamGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :team_goals, :aligned_parent_id, :integer
  end
end
