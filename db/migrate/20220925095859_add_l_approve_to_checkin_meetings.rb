class AddLApproveToCheckinMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :checkin_meetings, :l_approve, :string
  end
end
