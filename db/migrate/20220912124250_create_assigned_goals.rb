class CreateAssignedGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :assigned_goals do |t|
      t.references :organization
      t.references :group
      t.string :goal_name
      t.text :description
      t.integer :priority
      t.integer :year
      t.date :deadline

      t.timestamps
    end
    add_index :assigned_goals, :organization_id
  end
end
