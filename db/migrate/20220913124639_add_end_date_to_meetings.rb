class AddEndDateToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :end, :date
  end
end
