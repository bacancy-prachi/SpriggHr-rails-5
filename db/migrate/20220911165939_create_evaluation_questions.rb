class CreateEvaluationQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :evaluation_questions do |t|
      t.references :question
      t.references :evaluation
      t.text :answer
      t.integer :question_version

      t.timestamps
    end
    add_index :evaluation_questions, :question_id
    add_index :evaluation_questions, :evaluation_id
  end
end
