class CreateQuestionVersions < ActiveRecord::Migration[5.2]
  def change
    create_table :question_versions do |t|
      t.string   :item_type, null: false
      t.integer  :item_id,   null: false
      t.string   :event,     null: false
      t.string   :whodunnit
      t.text     :object
      t.datetime :created_at
    end
    add_index :question_versions, [:item_type, :item_id]
  end
end