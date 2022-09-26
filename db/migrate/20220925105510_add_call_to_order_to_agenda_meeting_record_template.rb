class AddCallToOrderToAgendaMeetingRecordTemplate < ActiveRecord::Migration[5.2]
  def change
    add_column :agenda_meeting_record_templates, :call_to_order, :text
  end
end
