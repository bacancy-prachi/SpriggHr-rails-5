class RemoveGroupFromEvaluationTeamGoals < ActiveRecord::Migration[5.2]
  def change
    remove_column :evaluation_team_goals, :group_id
  end
end
