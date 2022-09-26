class CreateThoughtStarters < ActiveRecord::Migration[5.2]
  def change
    create_table :thought_starters do |t|
      t.string :content
      t.string :comment_type
      t.references :organization

      t.timestamps
    end
  end
end
