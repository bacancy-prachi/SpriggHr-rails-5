class AddPositionWhenDisabledToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_column :employees, :position_when_disabled, :string

    Employee.joins(:login).where('approved = ?', 0).readonly(false).each do |employee|
      #p employee
      employee.update_attribute(:position_when_disabled, employee.organization_position.name)
      employee.update_attribute(:organization_position_id, nil)
    end
  end
end
