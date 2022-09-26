class AddDateToCheckinMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :checkin_meetings, :date, :datetime
  end
end
