class AddActiveToMytimeIncidentTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_incident_types, :active, :boolean, default: true
    add_column :mytime_incident_types, :deactivation_date, :date
  end
end
