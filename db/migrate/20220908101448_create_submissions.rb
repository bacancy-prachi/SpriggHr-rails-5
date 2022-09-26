class CreateSubmissions < ActiveRecord::Migration[5.2]
  def change
    create_table :submissions do |t|
      t.references :employee
      t.string :concerning
      t.string :status

      t.timestamps
    end
  end
end
