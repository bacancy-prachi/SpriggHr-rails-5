class CreateTranslateMytimeIncidentTypes < ActiveRecord::Migration[5.2]
  def change
    MytimeIncidentType.create_translation_table!(
      {name: :string,
       description: :text
      },
      {migrate_data: true
      })
  end
end
