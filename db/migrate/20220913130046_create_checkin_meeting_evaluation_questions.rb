class CreateCheckinMeetingEvaluationQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :checkin_meeting_evaluation_questions do |t|
      t.integer :checkin_meeting_question_id
      t.integer :checkin_meeting_evaluation_id
      t.text :answer
      t.integer :checkin_meeting_question_version
      t.timestamps
    end
  end
end
