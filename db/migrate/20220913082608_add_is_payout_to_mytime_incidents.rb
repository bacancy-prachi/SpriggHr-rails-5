class AddIsPayoutToMytimeIncidents < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_incidents, :is_payout, :boolean, default: false
  end
end
