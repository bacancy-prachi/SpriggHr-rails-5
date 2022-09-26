class CreateImprovementGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :improvement_goals do |t|
      t.references :area_for_improvement
      t.references :development_plan

      t.timestamps
    end
  end
end
