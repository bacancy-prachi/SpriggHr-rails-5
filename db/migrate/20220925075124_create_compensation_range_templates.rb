class CreateCompensationRangeTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :compensation_range_templates do |t|
      t.references :organization
      t.string :name
      t.string :compensation_type
      t.timestamps
    end
    add_index :compensation_range_templates, :organization_id
  end
end
