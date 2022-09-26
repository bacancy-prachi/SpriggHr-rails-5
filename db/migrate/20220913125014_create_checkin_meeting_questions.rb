class CreateCheckinMeetingQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :checkin_meeting_questions do |t|
      t.integer :organization_id
      t.text :body
      t.string :question_type

      t.timestamps
    end
    add_index :checkin_meeting_questions, :organization_id
  end
end
