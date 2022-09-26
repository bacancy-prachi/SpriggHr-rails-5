class CreateTranslateOrganizationPerformanceReviewType < ActiveRecord::Migration[5.2]
  def change
    OrganizationPerformanceReviewType.create_translation_table!(
      {name: :string,
       short_name: :string
      },
      {migrate_data: true
      })
  end
end
