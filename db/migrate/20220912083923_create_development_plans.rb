class CreateDevelopmentPlans < ActiveRecord::Migration[5.2]
  def change
    create_table :development_plans do |t|
      t.references :cycle
      t.string :status, default: "open"

      t.timestamps
    end
    add_index :development_plans, :cycle_id
  end
end
