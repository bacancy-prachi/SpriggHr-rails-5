class CreateStaticPages < ActiveRecord::Migration[5.2]
  def change
    create_table :static_pages do |t|
      t.references :organization
      t.string :title
      t.text :content
      t.string :category

      t.timestamps
    end
    add_index :static_pages, :organization_id
  end
end
