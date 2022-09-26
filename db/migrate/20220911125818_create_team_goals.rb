class CreateTeamGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :team_goals do |t|
      t.string :goal_name
      t.text :description

      t.timestamps
    end
  end
end
