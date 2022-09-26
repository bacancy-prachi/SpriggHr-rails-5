class AddNoteToCheckinMeeting < ActiveRecord::Migration[5.2]
  def change
    add_column :checkin_meetings, :note, :text
  end
end
