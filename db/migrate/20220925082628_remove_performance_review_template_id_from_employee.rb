class RemovePerformanceReviewTemplateIdFromEmployee < ActiveRecord::Migration[5.2]
  def change
    remove_column :employees, :performance_review_template_id
  end
end
