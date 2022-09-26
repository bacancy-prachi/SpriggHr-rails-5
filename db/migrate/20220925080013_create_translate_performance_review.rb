class CreateTranslatePerformanceReview < ActiveRecord::Migration[5.2]
  def change
    PerformanceReview.create_translation_table!(
      {review_type: :string
      },
      {migrate_data: true
      })
  end
end
