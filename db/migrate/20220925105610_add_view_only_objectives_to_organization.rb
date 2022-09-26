class AddViewOnlyObjectivesToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :view_only_objective_name, :string, default: "View Only Objectives"
  end
end
