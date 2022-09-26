class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.string :rating_name
      t.integer :range_low
      t.integer :range_high
      t.text :description
      t.references :organization

      t.timestamps
    end
  end
end
