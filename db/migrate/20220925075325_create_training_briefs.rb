class CreateTrainingBriefs < ActiveRecord::Migration[5.2]
  def change
    create_table :training_briefs do |t|
      t.references :cnc_brief_type
      t.string  :title
      t.text  :description
      t.string  :locale
      t.integer  :sort_order
      t.attachment  :brief

      t.timestamps
    end
    add_index :training_briefs, :cnc_brief_type_id
  end
end
