class AddMeetingIdToCheckinMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :checkin_meetings, :meeting_id, :integer
  end
end
