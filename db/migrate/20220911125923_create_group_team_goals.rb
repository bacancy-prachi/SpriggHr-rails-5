class CreateGroupTeamGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :group_team_goals do |t|
      t.references :team_goal
      t.references :group
      t.integer :inherited_from_id
      t.integer :priority
      t.boolean :enabled

      t.timestamps
    end
    add_index :group_team_goals, :team_goal_id
    add_index :group_team_goals, :group_id
  end
end
