class CreateActionItems < ActiveRecord::Migration[5.2]
  def change
    create_table :action_items do |t|
      t.references :improvement_goal
      t.references :strength_goal
      t.date :deadline
      t.text :description

      t.timestamps
    end
  end
end
