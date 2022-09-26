class AddStatusUpdateNameToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :status_update_name, :string, default: 'Status Updates'
  end
end
