class RemovePositionFromEmployee < ActiveRecord::Migration[5.2]
  def change
    Employee.all.each do |employee|

      position = OrganizationPosition.where("organization_id = ? AND name = ?", employee.organization_id, employee.position).first
      if position.nil?
        p 'position does not exist.'
        p 'creating new position'
        org = Organization.find(employee.organization_id)
        created_position = org.organization_positions.create(:name => employee.position, :desc => 'Migrated')
        employee.organization_position_id = created_position.id

        if employee.save
          p "Created Position #{employee.organization_position.name} & assigned to #{employee.full_name}"
        else
          p "Could not save employee"
        end

      else
        p 'existing position found.'
        p "Position Name: #{position.name}"

        employee.organization_position_id = position.id
        employee.save

      end
    end

    remove_column :employees, :position
  end
end
