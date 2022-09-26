class CreateDevelopmentActivityTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :development_activity_templates do |t|
      t.references :organization
      t.text :template
      t.timestamps
    end
    add_index :development_activity_templates, :organization_id
  end
end
