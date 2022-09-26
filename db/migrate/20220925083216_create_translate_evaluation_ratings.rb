class CreateTranslateEvaluationRatings < ActiveRecord::Migration[5.2]
  def change
    EvaluationRating.create_translation_table!(
      {:rating_name => :string,
       :description => :text
      },
      {:migrate_data => true
      })
  end
end
