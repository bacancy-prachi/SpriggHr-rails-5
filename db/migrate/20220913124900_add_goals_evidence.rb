class AddGoalsEvidence < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluation_goals, :evidence, :text
    add_column :evaluation_assigned_goals, :evidence, :text
    add_column :evaluation_team_goals, :evidence, :text
  end
end
