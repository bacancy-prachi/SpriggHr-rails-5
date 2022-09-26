class CreateThreeSixtyReviewQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :three_sixty_review_questions do |t|
      t.references :three_sixty_review
      t.integer :manager_question_id
      t.text :manager_question_body
      t.integer :self_question_id
      t.text :self_question_body
      t.string :question_type
      t.timestamps
    end
    add_index :three_sixty_review_questions, :three_sixty_review_id
    add_index :three_sixty_review_questions, :manager_question_id
    add_index :three_sixty_review_questions, :self_question_id
  end
end
