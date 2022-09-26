class CreateTranslateThoughtStarters < ActiveRecord::Migration[5.2]
  def change
    ThoughtStarter.create_translation_table!(
      {content: :string
      },
      {migrate_data: true
      })
  end
end
