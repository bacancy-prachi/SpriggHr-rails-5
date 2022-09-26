class CreateTranslateProfileFields < ActiveRecord::Migration[5.2]
  def change
    ProfileField.create_translation_table!(
      {field_name: :string
      },
      {migrate_data: true
      })
  end
end
