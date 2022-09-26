class AddPerformanceReviewTemplateIdToEmployee < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :performance_review_template_id, :integer, null: true
    add_index :employees, :performance_review_template_id

    Organization.all.each do |org|
      template = org.performance_review_templates.first
      org.employees.each do |emp|
        emp.update_attribute(:performance_review_template_id, template.id)
      end
    end
  end
end
