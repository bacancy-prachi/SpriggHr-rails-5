class AddMeetingType < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :meeting_type, :string
  end
end
