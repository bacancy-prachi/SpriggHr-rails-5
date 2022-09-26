class AddCarryOverLimitToMytimeIncidentTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_incident_types, :carryover_limit, :integer, default: 5
  end
end
