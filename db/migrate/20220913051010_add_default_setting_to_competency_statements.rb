class AddDefaultSettingToCompetencyStatements < ActiveRecord::Migration[5.2]
  def change
    add_column :competency_statements, :default_setting, :boolean
  end
end
