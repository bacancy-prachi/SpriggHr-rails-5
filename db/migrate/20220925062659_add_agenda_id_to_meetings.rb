class AddAgendaIdToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :agenda_id, :integer
  end
end
