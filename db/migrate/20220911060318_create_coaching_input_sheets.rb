class CreateCoachingInputSheets < ActiveRecord::Migration[5.2]
  def change
    create_table :coaching_input_sheets do |t|
      t.text :accomplishments
      t.text :disappointments
      t.text :competencies
      t.text :experience_gained
      t.text :relationships_built
      t.text :short_term_aspirations
      t.text :long_term_aspirations
      t.text :other_info
      t.references :cycle
      t.boolean :completed, default: 0
      t.date :completed_at
    end
  end
end
