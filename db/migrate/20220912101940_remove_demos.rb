class RemoveDemos < ActiveRecord::Migration[5.2]
  def change
    drop_table :demos
  end
end
