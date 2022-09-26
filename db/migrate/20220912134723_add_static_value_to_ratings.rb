class AddStaticValueToRatings < ActiveRecord::Migration[5.2]
  def change
    add_column :ratings, :static_value, :integer
  end
end
