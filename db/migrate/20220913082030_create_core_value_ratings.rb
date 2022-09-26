class CreateCoreValueRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :core_value_ratings do |t|
      t.integer :employee_id, null: false
      t.integer :rating, default: 0
      t.text :comments

      t.timestamps
    end
  end
end
