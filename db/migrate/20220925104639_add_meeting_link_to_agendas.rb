class AddMeetingLinkToAgendas < ActiveRecord::Migration[5.2]
  def change
    add_column :agendas, :meeting_link, :text
  end
end
