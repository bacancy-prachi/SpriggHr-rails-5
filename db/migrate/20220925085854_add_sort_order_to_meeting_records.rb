class AddSortOrderToMeetingRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :meeting_records, :sort_order, :integer, null: false, default: 0

    Organization.all.each do |org|
      org.meeting_records.where(year: 2016).each_with_index do |meeting_record, idx|
        meeting_record.update_attributes(sort_order: idx+1)
      end
      org.meeting_records.where(year: 2017).each_with_index do |meeting_record, idx|
        meeting_record.update_attributes(sort_order: idx+1)
      end
      org.meeting_records.where(year: 2018).each_with_index do |meeting_record, idx|
        meeting_record.update_attributes(sort_order: idx+1)
      end
    end
  end
end
