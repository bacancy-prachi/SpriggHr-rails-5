class CreatePerformanceReviewTemplateReviewTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :performance_review_template_review_types do |t|
      t.references :performance_review_template
      t.references :organization_performance_review_type
      t.timestamps
    end
    add_index :performance_review_template_review_types, :performance_review_template_id, name: 'prt_review_types_prt_id_index'
    add_index :performance_review_template_review_types, :organization_performance_review_type_id, name: 'prt_review_types_org_pr_type_id_index'
  end
end
