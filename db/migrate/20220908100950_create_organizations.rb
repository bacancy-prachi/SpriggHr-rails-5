class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :policy
      t.text :values
      t.text :mission
      t.text :managers_role
      t.text :employees_role

      t.timestamps
    end
  end
end
