class AddPerformanceReviewTemplateIdToCycle < ActiveRecord::Migration[5.2]
  def change
    add_column :cycles, :performance_review_template_id, :integer, null: true
    add_index :cycles, :performance_review_template_id
  end
end
