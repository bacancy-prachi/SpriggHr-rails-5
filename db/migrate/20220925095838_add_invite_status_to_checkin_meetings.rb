class AddInviteStatusToCheckinMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :checkin_meetings, :invite_status, :string
  end
end
