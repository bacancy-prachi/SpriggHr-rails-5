class CreateTranslateQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :question_versions, :locale, :string

    Question.create_translation_table!(
        {body: :text
        },
        {migrate_data: true
        })
  end
end
