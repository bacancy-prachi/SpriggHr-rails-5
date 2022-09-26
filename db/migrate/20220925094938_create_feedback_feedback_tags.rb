class CreateFeedbackFeedbackTags < ActiveRecord::Migration[5.2]
  def change
    create_table :feedback_feedback_tags do |t|
      t.references :feedback
      t.string :tag
      t.timestamps
    end
    add_index :feedback_feedback_tags, :feedback_id
  end
end
