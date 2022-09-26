class CreateOrientationIcons < ActiveRecord::Migration[5.2]
  def change
    create_table :orientation_icons do |t|
      t.integer :organization_id
      t.attachment :icon
      t.timestamps
    end
  end
end
