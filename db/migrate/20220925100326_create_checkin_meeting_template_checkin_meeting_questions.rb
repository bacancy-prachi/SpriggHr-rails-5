class CreateCheckinMeetingTemplateCheckinMeetingQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :checkin_meeting_template_checkin_meeting_questions do |t|
      t.references :checkin_meeting_template
      t.references :checkin_meeting_question
      t.timestamps
    end
    add_index :checkin_meeting_template_checkin_meeting_questions, :checkin_meeting_template_id, name: 'cmt_checkin_meeting_questions_cmt_id_index'
    add_index :checkin_meeting_template_checkin_meeting_questions, :checkin_meeting_question_id, name: 'cmt_checkin_meeting_questions_cmq_id_index'
  end
end
