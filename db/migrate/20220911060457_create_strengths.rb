class CreateStrengths < ActiveRecord::Migration[5.2]
  def change
    create_table :strengths do |t|
      t.references :coaching_worksheet
      t.string :headline
      t.text :clarification

      t.timestamps
    end
  end
end
