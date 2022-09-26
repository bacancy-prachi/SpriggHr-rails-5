class AddHiddenTypeToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :hidden_type, :string
    Meeting.all.each do |meeting|
      meeting.update_attributes!(:hidden_type => 'meeting')
    end
  end
end
