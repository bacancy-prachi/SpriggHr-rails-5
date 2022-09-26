class AddMinutesLengthToCheckinMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :checkin_meetings, :minutes_length, :integer
  end
end
