class CreateAreaForImprovementExamples < ActiveRecord::Migration[5.2]
  def change
    create_table :area_for_improvement_examples do |t|
      t.references :strength
      t.date :occured_at
      t.string :critical_incident
      t.text :explanation
      t.boolean :impacted_time
      t.boolean :impacted_money

      t.timestamps
    end
  end
end
