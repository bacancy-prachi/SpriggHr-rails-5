class CreateTranslateStaticPage < ActiveRecord::Migration[5.2]
  def change
    StaticPage.create_translation_table!(
      {title: :string,
       content: :text
      },
      {migrate_data: true
      })
  end
end
