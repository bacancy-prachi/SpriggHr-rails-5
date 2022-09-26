class UpdateDefaultEvaluationValueWeight < ActiveRecord::Migration[5.2]
  def change
    change_column_default :evaluations, :value_weight, 0
  end
end
