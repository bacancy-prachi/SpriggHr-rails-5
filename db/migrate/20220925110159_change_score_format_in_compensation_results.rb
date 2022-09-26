class ChangeScoreFormatInCompensationResults < ActiveRecord::Migration[5.2]
  def change
    change_column :compensation_results, :review_score, :float
  	change_column :compensation_results, :adjustment_percent, :float
  	change_column :compensation_results, :base_pay_adjustment, :float
  end
end
