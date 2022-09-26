class AddTitleToTemplateOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :template_orders, :title, :string
  end
end
