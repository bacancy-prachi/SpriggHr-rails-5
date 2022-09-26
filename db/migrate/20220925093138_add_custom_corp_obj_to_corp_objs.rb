class AddCustomCorpObjToCorpObjs < ActiveRecord::Migration[5.2]
  def change
    add_column :objectives_corps, :custom_objective, :boolean, null: false, default: false
    add_column :objectives_corps, :employee_id, :integer
    add_index :objectives_corps, :employee_id
  end
end
