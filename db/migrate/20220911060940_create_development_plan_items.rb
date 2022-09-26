class CreateDevelopmentPlanItems < ActiveRecord::Migration[5.2]
  def change
    create_table :development_plan_items do |t|
      t.references :development_plan
      t.text :description

      t.timestamps
    end
  end
end
