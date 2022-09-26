class CreateCncUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :cnc_users do |t|
      t.string :first_name
      t.string :last_name
      t.string :position

      t.timestamps
    end
  end
end
