class CreateProbationaryGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :probationary_goals do |t|
      t.references :organization
      t.references :group
      t.string :goal_name
      t.text :description
      t.integer :priority
      t.integer :year
      t.integer :meeting_id
      t.integer :sort_order
      t.string :metric_type, default: 'metric'

      t.timestamps
    end
    add_index :probationary_goals, :organization_id
    add_index :probationary_goals, :group_id
  end
end
