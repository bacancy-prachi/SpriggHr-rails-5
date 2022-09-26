class CreateMeetingRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :meeting_records do |t|
      t.references :organization, null: false, index: true
      t.string :name
      t.integer :year, null: false, index: true
      t.has_attached_file :attachment
      t.timestamps
    end
  end
end
