class CreateOrganizationPerformanceReviewTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_performance_review_types do |t|
      t.references :organization
      t.string :name
      t.string :short_name
      t.string :colour

      t.boolean :use_prerec
      t.integer :prerec_id

      t.date :start_date
      t.date :end_date

      t.integer :sort_order

      t.timestamps
    end
    add_index :organization_performance_review_types, :organization_id

    Organization.all.each do |org|
      org.organization_performance_review_types.create!(name: 'Mid-Year Evaluation', short_name: 'Mid-Year', colour: '#e5e0ec', use_prerec: false, start_date: '2016-01-01', end_date: '2016-12-31', :sort_order: 1)
      org.organization_performance_review_types.create!(name: 'Year-End Evaluation', short_name: 'End-Year', colour: '#dbeef3', use_prerec: false, start_date: '2016-01-01', end_date: '2016-12-31', sort_order: 2)
    end

    PerformanceReview.all.each do |review|
      if review.review_type == 'midyear'
        review.review_type = 'Mid-Year Evaluation'
      else
        review.review_type = 'Year-End Evaluation'
      end

      review.save

    end
  end
end
