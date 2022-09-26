class CreatePerformanceReviewTemplateRatingSets < ActiveRecord::Migration[5.2]
  def change
    create_table :performance_review_template_rating_sets do |t|
      t.references :performance_review_template, null: false
      t.references :rating_set, null: false
      t.string :rating_type, null: true
      t.timestamps
    end
    add_index :performance_review_template_rating_sets, :performance_review_template_id, name: 'index_prt_rating_sets_on_performance_review_template_id'
    add_index :performance_review_template_rating_sets, :rating_set_id
  end
end
