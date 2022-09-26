class CreateAreaForImprovements < ActiveRecord::Migration[5.2]
  def change
    create_table :area_for_improvements do |t|
      t.references :coaching_worksheet
      t.string :headline
      t.text :clarification
      t.boolean :performance_impacting
      t.boolean :potential_enhancing
      t.boolean :job_threatening

      t.timestamps
    end
  end
end
