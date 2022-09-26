class CreateOrganizationNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_notifications do |t|
      t.references :organization
      t.string :task_name
      t.string :custom_text

      t.timestamps
    end
    add_index :organization_notifications, :organization_id
  end
end
