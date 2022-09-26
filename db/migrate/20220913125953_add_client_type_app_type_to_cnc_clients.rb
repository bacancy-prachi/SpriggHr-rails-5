class AddClientTypeAppTypeToCncClients < ActiveRecord::Migration[5.2]
  def change
    add_column :cnc_clients, :client_type, :string
    add_column :cnc_clients, :app_type, :string
  end
end
