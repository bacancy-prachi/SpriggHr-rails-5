class CreateAgendaItems < ActiveRecord::Migration[5.2]
  def change
    create_table :agenda_items do |t|
      t.references :agenda
      t.string :time_hours
      t.string :time_mins
      t.text :name
      t.text :how
      t.text :objective
      t.text :outcome

      t.timestamps
    end
    add_index :agenda_items, :agenda_id
  end
end
