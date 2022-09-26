class CreateTranslateRatings < ActiveRecord::Migration[5.2]
  def change
    Rating.create_translation_table!(
        {rating_name: :string,
          description: :text
        },
        {migrate_data: true
        })
  end
end
