class CreateCoachingInputItems < ActiveRecord::Migration[5.2]
  def change
    create_table :coaching_input_items do |t|
      t.references :coaching_input_sheet
      t.string :item_type
      t.text :content

      t.timestamps
    end
  end
end
