class AddCheckinMeetingTemplateIdToCheckinMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :checkin_meetings, :checkin_meeting_template_id, :integer
    add_index :checkin_meetings, :checkin_meeting_template_id
  end
end
