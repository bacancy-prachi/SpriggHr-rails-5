class AddLinkedQuestionToQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :linked_question_id, :integer, default: nil
    add_index :questions, :linked_question_id
  end
end
