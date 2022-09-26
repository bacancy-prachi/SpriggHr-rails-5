class AddPositionColumnToOrientationQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :orientation_questions, :position, :integer
  end
end
