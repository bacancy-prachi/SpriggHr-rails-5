class CreateInfractions < ActiveRecord::Migration[5.2]
  def change
    create_table :infractions do |t|
      t.references :organization, null: false
      t.string :name, null: false
      t.text :description, null: true
      t.string :point_value, null: false
      t.timestamps
    end
  end
end
