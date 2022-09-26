class CreateTranslateSmartGoalGuideline < ActiveRecord::Migration[5.2]
  def change
    SmartGoalGuideline.create_translation_table!(
      {:letter => :string,
       :guideline => :string,
       :description => :text,
      },
      {:migrate_data => true
      })
  end
end
