class CreateTranslateCheckinMeetingQuestions < ActiveRecord::Migration[5.2]
  def change
    CheckinMeetingQuestion.create_translation_table!(
      {body: :text
      },
      {migrate_data: true
      })
  end
end
