class AddIshalfToMytimeIncidentDays < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_incident_days, :ishalf, :boolean, default: false
  end
end
