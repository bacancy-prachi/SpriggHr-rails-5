class AddSingleCompetencyFeedbackToThreeSixtyEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :three_sixty_employees, :single_competency_feedback, :text, default: nil
  end
end
