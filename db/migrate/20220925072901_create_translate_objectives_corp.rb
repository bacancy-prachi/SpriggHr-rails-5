class CreateTranslateObjectivesCorp < ActiveRecord::Migration[5.2]
  def change
    ObjectivesCorp.create_translation_table!(
      {corp_obj_name: :string,
       corp_obj_description: :text
      },
      {migrate_data: true
      })
  end
end
