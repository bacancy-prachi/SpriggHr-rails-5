class CreateStrengthGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :strength_goals do |t|
      t.references :strength
      t.references :development_plan
      t.text :description

      t.timestamps
    end
  end
end
