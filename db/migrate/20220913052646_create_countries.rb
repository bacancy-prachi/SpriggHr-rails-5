class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.timestamps null: false
      t.string :name, null: false
      t.string :code, null: false
    end
  end
end
