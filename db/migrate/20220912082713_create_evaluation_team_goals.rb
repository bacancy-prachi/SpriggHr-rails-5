class CreateEvaluationTeamGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluation_team_goals do |t|
      t.references :team_goal
      t.references :evaluation
      t.integer :rating
      t.integer :goal_version
      t.text :comment

      t.timestamps
    end
    add_index :evaluation_team_goals, :team_goal_id
    add_index :evaluation_team_goals, :evaluation_id
  end
end
