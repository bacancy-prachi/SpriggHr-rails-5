class CreateCncClients < ActiveRecord::Migration[5.2]
  def change
    create_table :cnc_clients do |t|
      t.text :org_name
      t.attachment :load_sheet
      t.timestamps
    end
  end
end
