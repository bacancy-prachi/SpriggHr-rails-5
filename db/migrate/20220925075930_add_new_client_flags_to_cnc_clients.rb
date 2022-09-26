class AddNewClientFlagsToCncClients < ActiveRecord::Migration[5.2]
  def change
    add_column :cnc_clients, :ncs_phase_one, :boolean, default: 0
    add_column :cnc_clients, :ncs_phase_two, :boolean, default: 0
    add_column :cnc_clients, :ncs_phase_three, :boolean, default: 0
    add_column :cnc_clients, :ncs_phase_four, :boolean, default: 0
    add_column :cnc_clients, :ncs_phase_five, :boolean, default: 0

    CncClient.all.each do |cnc_client|
      cnc_client.update_attributes(ncs_phase_one: true, ncs_phase_two: true, ncs_phase_three: true, ncs_phase_four: true, ncs_phase_five: true)
    end
  end
end
