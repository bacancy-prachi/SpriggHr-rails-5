class AddOverallRatingToEvaluations < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluations, :overall_rating, :integer
  end
end
