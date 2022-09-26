class CreateDevelopmentPlanUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :development_plan_updates do |t|
      t.references :development_plan
      t.string :status
      t.text :note

      t.timestamps
    end
    add_index :development_plan_updates, :development_plan_id
  end
end
