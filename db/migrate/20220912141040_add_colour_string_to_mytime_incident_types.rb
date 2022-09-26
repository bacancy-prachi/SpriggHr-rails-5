class AddColourStringToMytimeIncidentTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_incident_types, :colour, :string
  end
end
