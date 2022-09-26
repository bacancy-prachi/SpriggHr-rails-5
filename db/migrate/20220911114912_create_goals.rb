class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.references :cycle
      t.string :goal_name
      t.text :description
      t.date :deadline
      t.integer :priority
      t.string :status, :default => "open"

      t.timestamps
    end
    add_index :goals, :cycle_id
  end
end
