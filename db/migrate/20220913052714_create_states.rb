class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.timestamps null: false
      t.string :name, null: false
      t.string :code, default: ""
      t.integer :country_id
    end
  end
end
