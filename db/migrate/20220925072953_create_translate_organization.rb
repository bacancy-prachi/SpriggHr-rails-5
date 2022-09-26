class CreateTranslateOrganization < ActiveRecord::Migration[5.2]
  def change
    Organization.create_translation_table!(
      {msg_from_president: :text,
       sample_goal: :text,
       welcome_message: :string,
       sprigg_identifier: :string,
       corporate_objectives_name: :string,
       the_sixty_report_name: :string,
       core_values_statement: :text
      },
      {migrate_data: true
      })
  end
end
