class AddScoreAndRatingToEvaluation < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluations, :score, :float
    add_column :evaluations, :rating, :string
  end
end
