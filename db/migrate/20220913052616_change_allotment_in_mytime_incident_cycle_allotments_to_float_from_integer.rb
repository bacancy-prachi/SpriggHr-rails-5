class ChangeAllotmentInMytimeIncidentCycleAllotmentsToFloatFromInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :mytime_incident_cycle_allotments, :allotment, :float
  end
end
