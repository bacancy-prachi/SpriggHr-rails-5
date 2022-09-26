class CreateEvaluationAssignedGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluation_assigned_goals do |t|
      t.references :assigned_goal
      t.references :evaluation
      t.text :comment
      t.integer :rating
      t.integer :priority
      t.boolean :skip_rating

      t.timestamps
    end
    add_index :evaluation_assigned_goals, :assigned_goal_id
    add_index :evaluation_assigned_goals, :evaluation_id
  end
end
