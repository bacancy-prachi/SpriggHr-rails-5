class RemoveSituationFromCoachingInputSheet < ActiveRecord::Migration[5.2]
  def change
    remove_column :coaching_input_sheets, :other_info
    remove_column :coaching_input_sheets, :experience_gained
    remove_column :coaching_input_sheets, :short_term_aspirations
    remove_column :coaching_input_sheets, :long_term_aspirations
    remove_column :coaching_input_sheets, :ultimate_aspirations
  end
end
