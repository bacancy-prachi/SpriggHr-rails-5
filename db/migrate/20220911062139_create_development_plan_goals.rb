class CreateDevelopmentPlanGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :development_plan_goals do |t|
      t.references :development_plan
      t.integer :position
      t.text :description
      t.string :goal_type

      t.timestamps
    end
  end
end
