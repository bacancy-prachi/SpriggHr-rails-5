class CreateSlackToolEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :slack_tool_employees do |t|
      t.references :slack_tool
      t.references :employee
      t.string :slack_user_id
      t.string :slack_im_id

      t.timestamps
    end
    add_index :slack_tool_employees, :employee_id
    add_index :slack_tool_employees, :slack_tool_id
  end
end
