class AddRrNotesToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :randr_note, :text
  end
end
