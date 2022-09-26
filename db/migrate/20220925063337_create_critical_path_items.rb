class CreateCriticalPathItems < ActiveRecord::Migration[5.2]
  def change
    create_table :critical_path_items do |t|
      t.references :critical_path
      t.references :employee
      t.text :task
      t.date :deadline
      t.integer :cost
      t.string :currency
      t.text :comments

      t.timestamps
    end
    add_index :critical_path_items, :critical_path_id
    add_index :critical_path_items, :employee_id
  end
end
