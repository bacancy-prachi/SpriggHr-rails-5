class CreateDemos < ActiveRecord::Migration[5.2]
  def change
    create_table :demos do |t|
      t.string :title
      t.text :description
      t.string :length
      t.string :filename

      t.timestamps
    end
  end
end
