class CreateSupportingInitiatives < ActiveRecord::Migration[5.2]
  def change
    create_table :supporting_initiatives do |t|
      t.string :content
      t.references :organization
      t.references :objectives_corp
      t.references :employee

      t.timestamps
    end
    add_index :supporting_initiatives, :organization_id
    add_index :supporting_initiatives, :objectives_corp_id
    add_index :supporting_initiatives, :employee_id
  end
end
