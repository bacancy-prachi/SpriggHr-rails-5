class AddMytimeIncidentTypeReferenceToMytimeIncidentCycleAllotments < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_incident_cycle_allotments, :mytime_incident_type_id, :integer
    add_index :mytime_incident_cycle_allotments, :mytime_incident_type_id, name: 'my_time_index'
  end
end
