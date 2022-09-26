class CreateAgendaResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :agenda_responses do |t|
      t.references :agenda
      t.references :employee
      t.string :status
      t.text :response
      t.timestamps
    end
    add_index :agenda_responses, :agenda_id
    add_index :agenda_responses, :employee_id
  end
end
