class AddDefaultValueToRating < ActiveRecord::Migration[5.2]
  def change
    change_column :evaluation_goals, :rating, :integer, default: 0
  end
end
