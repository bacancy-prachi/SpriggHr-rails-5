class AddTypeToCompetencies < ActiveRecord::Migration[5.2]
  def change
    add_column :competencies, :competency_type, :string, default: 'evaluation'
  end
end
