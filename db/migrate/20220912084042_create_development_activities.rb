class CreateDevelopmentActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :development_activities do |t|
      t.references :development_plan
      t.string :item_name
      t.text :description

      t.timestamps
    end
    add_index :development_activities, :development_plan_id
  end
end
