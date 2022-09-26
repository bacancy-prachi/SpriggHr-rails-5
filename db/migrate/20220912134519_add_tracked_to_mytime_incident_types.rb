class AddTrackedToMytimeIncidentTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_incident_types, :tracked, :boolean
  end
end
