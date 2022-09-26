class AddEmployeeNumberToLoadSheetItems < ActiveRecord::Migration[5.2]
  def change
    add_column :load_sheet_items, :employee_number, :string
  end
end
