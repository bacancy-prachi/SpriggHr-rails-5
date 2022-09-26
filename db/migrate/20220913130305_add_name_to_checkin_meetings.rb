class AddNameToCheckinMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :checkin_meetings, :name, :string
  end
end
