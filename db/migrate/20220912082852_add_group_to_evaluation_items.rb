class AddGroupToEvaluationItems < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluation_team_goals, :group_id, :integer
    add_column :evaluation_competencies, :group_id, :integer
  end
end
