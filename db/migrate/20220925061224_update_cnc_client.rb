class UpdateCncClient < ActiveRecord::Migration[5.2]
  def change
    rename_column :cnc_clients, :org_id, :organization_id
    add_column :cnc_clients, :client_process_status, :string, default: 'complete'
  end
end
