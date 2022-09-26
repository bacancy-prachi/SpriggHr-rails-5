class AddDatesToMytimeIncidents < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_incidents, :start_date, :date
    add_column :mytime_incidents, :end_date, :date
  end
end
