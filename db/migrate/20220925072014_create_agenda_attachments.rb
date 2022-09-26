class CreateAgendaAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :agenda_attachments do |t|
      t.references :agenda
      t.has_attached_file :attachment
      t.timestamps
    end
    add_index :agenda_attachments, :agenda_id
  end
end
