class AddYearToObjectivesCorps < ActiveRecord::Migration[5.2]
  def change
    add_column :objectives_corps, :year, :integer

    ObjectivesCorp.all.each do |obj_corp|
      obj_corp.year = obj_corp.organization.get_current_mytime_year
      obj_corp.save
    end
  end
end
