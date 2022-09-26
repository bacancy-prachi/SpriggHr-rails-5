class AddCarryoverToMytimeIncidentTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_incident_types, :carryover, :boolean, default: true
  end
end
