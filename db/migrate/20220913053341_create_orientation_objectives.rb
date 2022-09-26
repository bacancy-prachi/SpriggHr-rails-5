class CreateOrientationObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :orientation_objectives do |t|
      t.timestamps null: false
      t.integer :position
      t.string :title, null: false
      t.text :description
    end
  end
end
