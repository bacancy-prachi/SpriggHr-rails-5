class CreateSmartGoalGuidelines < ActiveRecord::Migration[5.2]
  def change
    create_table :smart_goal_guidelines do |t|
      t.references :organization
      t.string :letter
      t.string :guideline
      t.text :description
      t.timestamps
    end
    add_index :smart_goal_guidelines, :organization_id
  end
end
