class AddBodyQuestionTypeToCheckinMeetingEvaluationQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :checkin_meeting_evaluation_questions, :question_type, :string
    add_column :checkin_meeting_evaluation_questions, :body, :text
  end
end
