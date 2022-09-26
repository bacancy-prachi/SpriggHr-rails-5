class ChangeAllotmentInMytimeIncidentEmployeeAllotmentsToFloatFromInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :mytime_incident_employee_allotments, :allotment, :float
  end
end
