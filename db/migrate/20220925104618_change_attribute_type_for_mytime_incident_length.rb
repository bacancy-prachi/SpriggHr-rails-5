class ChangeAttributeTypeForMytimeIncidentLength < ActiveRecord::Migration[5.2]
  def change
    change_column :mytime_incidents, :length, :decimal, precision: 10, scale:1
  end
end
