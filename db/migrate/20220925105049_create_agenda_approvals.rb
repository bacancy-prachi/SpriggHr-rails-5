class CreateAgendaApprovals < ActiveRecord::Migration[5.2]
  def change
    create_table :agenda_approvals do |t|
      t.references :agenda
      t.string :approval_status
      t.text :comment
      t.timestamps
    end
    add_index :agenda_approvals, :agenda_id
  end
end
