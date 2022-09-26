class AddAspirationsToCoachingInputSheets < ActiveRecord::Migration[5.2]
  def change
    add_column :coaching_input_sheets, :ultimate_aspirations, :text
  end
end
