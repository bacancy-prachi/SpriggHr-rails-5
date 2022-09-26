class AddDefaultValueToCopmRating < ActiveRecord::Migration[5.2]
  def change
    change_column :evaluation_competencies, :rating, :integer, default: 0
  end
end
