class CreateMytimeIncidentTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :mytime_incident_types do |t|
      t.string :name
      t.text :description
      t.belongs_to :organization

      t.timestamps
    end
  end
end
