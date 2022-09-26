class AddOverallCommentToEvaluations < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluations, :overall_comment, :text
  end
end
