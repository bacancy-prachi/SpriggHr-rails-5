class CreateTranslateCompetency < ActiveRecord::Migration[5.2]
  def change
    Competency.create_translation_table!(
      {comp_name: :string,
       description: :text
      },
      {migrate_data: true
      })
  end
end
