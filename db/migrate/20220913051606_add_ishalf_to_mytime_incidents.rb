class AddIshalfToMytimeIncidents < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_incidents, :ishalf, :boolean, default: false
  end
end
