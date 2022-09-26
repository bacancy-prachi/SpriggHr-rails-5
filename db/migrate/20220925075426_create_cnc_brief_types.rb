class CreateCncBriefTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :cnc_brief_types do |t|
      t.string :name
      t.boolean :visible_to_user
      t.boolean :visible_to_manager
      t.boolean :visible_to_admin
      t.boolean :audience_sprigg
      t.boolean :audience_ow

      t.timestamps
    end
  end
end
