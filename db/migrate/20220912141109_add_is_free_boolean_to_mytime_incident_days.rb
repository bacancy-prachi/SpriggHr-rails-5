class AddIsFreeBooleanToMytimeIncidentDays < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_incident_days, :isFree, :boolean
  end
end
