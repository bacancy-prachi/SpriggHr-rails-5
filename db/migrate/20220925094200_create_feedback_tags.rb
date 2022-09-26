class CreateFeedbackTags < ActiveRecord::Migration[5.2]
  def change
    create_table :feedback_tags do |t|
      t.references :organization
      t.string :tag
      t.timestamps
    end
    add_index :feedback_tags, :organization_id
  end
end
