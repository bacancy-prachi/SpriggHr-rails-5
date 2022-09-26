class CreateTrainingVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :training_videos do |t|
      t.string :title
      t.text :description
      t.string :filename
      t.integer :sort_order

      t.timestamps
    end
  end
end
