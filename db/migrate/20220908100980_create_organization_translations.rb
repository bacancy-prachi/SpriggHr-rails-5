class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_translations, force: true do |t|
      t.string :locale, null: false
      t.text :msg_from_president
      t.text :sample_goal
      t.text :core_values_statement
      t.string :welcome_message
      t.string :sprigg_identifier
      t.string :corporate_objectives_name
      t.string :the_sixty_report_name
      t.references :organization

      t.timestamps
    end
  end
end
