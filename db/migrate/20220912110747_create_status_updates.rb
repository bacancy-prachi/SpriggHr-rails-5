class CreateStatusUpdates < ActiveRecord::Migration[5.2]
  def change
    create_table :status_updates do |t|
      t.belongs_to :employee
      t.text :content

      t.timestamps
    end
    add_index :status_updates, :employee_id
  end
end
