class CreateProbationaryGoalVersions < ActiveRecord::Migration[5.2]
  def change
    create_table :probationary_goal_versions do |t|
      t.string :item_type, null: false
      t.integer :item_id, null: false
      t.string :event, null: false
      t.string :whodunnit
      t.text :object
      t.string :locale

      t.timestamps
    end
  end
end
