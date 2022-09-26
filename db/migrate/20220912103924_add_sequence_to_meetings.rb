class AddSequenceToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :sequence, :integer, default: 0
  end
end
