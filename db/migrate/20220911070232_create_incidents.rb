class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.string :critical_incident
      t.text :explanation
      t.boolean :impacted_time
      t.boolean :impacted_money
      t.boolean :impacted_people
      t.date :occured_at
      t.references :area_for_improvement
      t.references :strength
      t.references :employee

      t.timestamps
    end
  end
end
