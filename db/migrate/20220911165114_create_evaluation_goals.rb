class CreateEvaluationGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluation_goals do |t|
      t.references :goal
      t.references :evaluation
      t.integer :rating
      t.integer :goal_version

      t.timestamps
    end
    add_index :evaluation_goals, :goal_id
    add_index :evaluation_goals, :evaluation_id
  end
end
