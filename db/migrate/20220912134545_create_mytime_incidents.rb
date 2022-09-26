class CreateMytimeIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :mytime_incidents do |t|
      t.string :name
      t.text :reason
      t.string :status
      t.decimal :length
      t.references :cycle
      t.references :mytime_incident_type

      t.timestamps
    end
    add_index :mytime_incidents, :mytime_incident_type_id
    add_index :cycles, :id
  end
end
