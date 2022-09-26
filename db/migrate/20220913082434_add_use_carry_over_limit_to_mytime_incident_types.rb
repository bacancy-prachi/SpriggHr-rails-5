class AddUseCarryOverLimitToMytimeIncidentTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_incident_types, :use_carryover_limit, :boolean, default: false
  end
end
