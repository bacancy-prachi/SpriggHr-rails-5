class CreateAgendas < ActiveRecord::Migration[5.2]
  def change
    create_table :agendas do |t|
      t.references :organization
      t.references :employee
      t.string :title
      t.datetime :date
      t.string :address
      t.string :city
      t.string :state
      t.string :status

      t.timestamps
    end
    add_index :agendas, :organization_id
    add_index :agendas, :employee_id
  end
end
