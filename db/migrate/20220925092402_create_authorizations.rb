class CreateAuthorizations < ActiveRecord::Migration[5.2]
  def change
    create_table :authorizations do |t|
      t.string :provider
      t.string :uid
      t.references :login

      t.timestamps
    end
    add_index :authorizations, :login_id
  end
end
