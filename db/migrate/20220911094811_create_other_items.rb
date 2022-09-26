class CreateOtherItems < ActiveRecord::Migration[5.2]
  def change
    create_table :other_items do |t|
      t.string :title
      t.text :description
      t.references :development_plan

      t.timestamps
    end
    add_index :other_items, :development_plan_id
  end
end
