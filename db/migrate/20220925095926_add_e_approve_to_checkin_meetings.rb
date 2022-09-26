class AddEApproveToCheckinMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :checkin_meetings, :e_approve, :string
  end
end
