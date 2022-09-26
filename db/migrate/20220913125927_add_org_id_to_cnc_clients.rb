class AddOrgIdToCncClients < ActiveRecord::Migration[5.2]
  def change
    add_column :cnc_clients, :org_id, :integer
  end
end
