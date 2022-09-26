class AddApprovedColumnToMytimeIncidentTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_incident_types, :pre_approve_incidents, :boolean, default: false
  end
end
