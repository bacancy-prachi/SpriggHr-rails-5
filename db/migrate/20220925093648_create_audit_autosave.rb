class CreateAuditAutosave < ActiveRecord::Migration[5.2]
  def change
    create_table :autosave_audits do |t|
      t.references :organization
      t.integer :employee_id
      t.integer :three_sixty_review_id
      t.integer :item_id
      t.string :item_type
      t.integer :rating
      t.text :comment
      t.timestamps
    end
    add_index :autosave_audits, :organization_id
    add_index :autosave_audits, :employee_id
    add_index :autosave_audits, :three_sixty_review_id
    add_index :autosave_audits, :item_id
  end
end
