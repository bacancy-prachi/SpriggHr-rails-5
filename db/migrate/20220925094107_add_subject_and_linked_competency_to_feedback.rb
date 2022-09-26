class AddSubjectAndLinkedCompetencyToFeedback < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :linked_competency, :text, default: nil
  end
end
