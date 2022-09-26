class AddTypeToEvaluationRatingSets < ActiveRecord::Migration[5.2]
  def change
    add_column :evaluation_rating_sets, :rating_type, :string, null: true
  end
end
