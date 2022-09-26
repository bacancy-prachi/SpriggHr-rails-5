class CreateOrganizationAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_admins do |t|
      t.references :organization
      t.string :email
      t.timestamps
    end
    add_index :organization_admins, :organization_id
  end
end
