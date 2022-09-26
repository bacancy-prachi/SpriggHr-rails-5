class AddEmployeeDescriptionToOrientationObjectives < ActiveRecord::Migration[5.2]
  def change
    add_column :orientation_objectives, :employee_description, :text
  end
end
