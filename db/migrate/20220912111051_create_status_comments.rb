class CreateStatusComments < ActiveRecord::Migration[5.2]
  def change
    create_table :status_comments do |t|
      t.references :status_update
      t.references :employee
      t.text :content

      t.timestamps
    end
    add_index :status_comments, :status_update_id
    add_index :status_comments, :employee_id
  end
end
