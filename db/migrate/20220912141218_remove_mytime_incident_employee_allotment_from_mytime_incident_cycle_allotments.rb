class RemoveMytimeIncidentEmployeeAllotmentFromMytimeIncidentCycleAllotments < ActiveRecord::Migration[5.2]
  def change
    remove_column :mytime_incident_cycle_allotments, :mytime_incident_employee_allotment_id
  end
end
