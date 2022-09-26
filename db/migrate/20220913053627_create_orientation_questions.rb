class CreateOrientationQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :orientation_questions do |t|
      t.timestamps null: false
      t.integer :organization_id
      t.string :category, default: ""
      t.text :description, null: false
    end
  end
end
