class CreateMytimeIncidentEmployeeAllotments < ActiveRecord::Migration[5.2]
  def change
    create_table :mytime_incident_employee_allotments do |t|
      t.references :employee
      t.references :mytime_incident_type
      t.integer :allotment

      t.timestamps
    end
    add_index :mytime_incident_employee_allotments, :employee_id
    add_index :mytime_incident_employee_allotments, :id
  end
end
