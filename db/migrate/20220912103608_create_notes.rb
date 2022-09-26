class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.references :employee
      t.integer :note_owner
      t.string :note_name
      t.string :note_type
      t.text :note_description

      t.timestamps
    end
    add_index :notes, :employee_id
  end
end
