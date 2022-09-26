class AddCompensationTypeToCompensationResults < ActiveRecord::Migration[5.2]
  def change
    add_column :compensation_results, :compensation_type, :string
  end
end
