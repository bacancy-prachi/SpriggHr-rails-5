class CreateTranslateCheckinMeetingEvaluationQuestions < ActiveRecord::Migration[5.2]
  def change
    CheckinMeetingEvaluationQuestion.create_translation_table!(
      {:body => :text
      },
      {:migrate_data => true
      })

  CheckinMeetingEvaluationQuestion.all.each do |cmeq|
    if cmeq.checkin_meeting_question.nil?
      cmeq.update_attributes(body: 'Migrated')
    else
      cmeq.update_attributes(question_type: cmeq.checkin_meeting_question.question_type, body: cmeq.checkin_meeting_question.body)
    end
  end
  end
end
