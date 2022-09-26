class AddQuestionIdToQuestionVersion < ActiveRecord::Migration[5.2]
  def change
    add_column :question_versions, :question_id, :integer
  end
end
