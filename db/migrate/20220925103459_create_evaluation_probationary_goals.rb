class CreateEvaluationProbationaryGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluation_probationary_goals do |t|
      t.references :probationary_goal
      t.references :evaluation
      t.integer :rating, default: 0
      t.integer :goal_version
      t.text :comment
      t.integer :priority
      t.boolean :skip_rating, default: false
      t.text :evidence
      t.boolean :full_evaluation, default: true
      t.date :deadline

      t.timestamps
    end
    add_index :evaluation_probationary_goals, :probationary_goal_id
    add_index :evaluation_probationary_goals, :evaluation_id
  end
end
