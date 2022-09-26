class CreateCheckinMeetingTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :checkin_meeting_templates do |t|
      t.references :organization
      t.string :name
      t.timestamps
    end
    add_index :checkin_meeting_templates, :organization_id
  end
end
