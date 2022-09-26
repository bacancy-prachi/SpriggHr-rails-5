class CreateDevelopmentReccomendations < ActiveRecord::Migration[5.2]
  def change
    create_table :development_reccomendations do |t|
      t.references :coaching_worksheet
      t.integer :position
      t.text :description

      t.timestamps
    end
  end
end
