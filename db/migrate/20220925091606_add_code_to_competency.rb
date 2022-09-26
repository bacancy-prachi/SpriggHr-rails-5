class AddCodeToCompetency < ActiveRecord::Migration[5.2]
  def change
    add_column :competencies, :code, :string, default: nil
  end
end
