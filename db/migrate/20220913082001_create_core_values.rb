class CreateCoreValues < ActiveRecord::Migration[5.2]
  def change
    create_table :core_values do |t|
      t.integer :organization_id, null: false
      t.string :name, default: "", null: false
      t.text :description

      t.timestamps
    end
  end
end
