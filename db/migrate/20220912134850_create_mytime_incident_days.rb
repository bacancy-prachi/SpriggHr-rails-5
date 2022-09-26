class CreateMytimeIncidentDays < ActiveRecord::Migration[5.2]
  def change
    create_table :mytime_incident_days do |t|
      t.references :mytime_incident
      t.date :date
      t.time :startTime
      t.time :endTime

      t.timestamps
    end
    add_index :mytime_incident_days, :mytime_incident_id
  end
end
