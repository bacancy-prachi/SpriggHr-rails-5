class AddEmployeeToAgendaItems < ActiveRecord::Migration[5.2]
  def change
    add_column :agenda_items, :employee_id, :integer
    add_column :agenda_items, :presenter_type, :string
    add_column :agenda_items, :guest_name, :string
    add_column :agenda_items, :guest_email, :string
    add_column :agenda_items, :guest_token, :string
  end
end
