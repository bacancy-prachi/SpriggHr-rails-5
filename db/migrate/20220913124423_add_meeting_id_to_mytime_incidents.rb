class AddMeetingIdToMytimeIncidents < ActiveRecord::Migration[5.2]
  def change
    add_column :mytime_incidents, :meeting_id, :integer
  end
end
