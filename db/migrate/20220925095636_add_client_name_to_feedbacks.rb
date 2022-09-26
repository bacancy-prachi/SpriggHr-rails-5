class AddClientNameToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_column :feedbacks, :client_name, :string, default: nil
  end
end
