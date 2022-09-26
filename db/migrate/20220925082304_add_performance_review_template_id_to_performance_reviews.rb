class AddPerformanceReviewTemplateIdToPerformanceReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :performance_reviews, :performance_review_template_id, :integer, null: false
    add_index :performance_reviews, :performance_review_template_id

    PerformanceReview.all.each do |pr|
      unless pr.cycle.nil?
        template = pr.cycle.employee.organization.performance_review_templates.first
      else
        template = pr.evaluations.first.employee.organization.performance_review_templates.first unless pr.evaluations.first.nil?
      end
      pr.update_attribute(:performance_review_template_id, template.id) unless template.nil?
    end
  end
end
