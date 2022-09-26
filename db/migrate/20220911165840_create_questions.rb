class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.references :organization
      t.text :body
      t.string :question_type

      t.timestamps
    end
    add_index :questions, :organization_id
  end
end
