class CreateStrengthsIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :strengths_incidents, id: false do |t|
      t.references :strength
      t.references :incident
      t.timestamps
    end
  end
end
