class AddAudienceTypeToTrainingVideo < ActiveRecord::Migration[5.2]
  def change
    add_column :training_videos, :audience_type, :string
    add_column :training_videos, :thumbnail_path, :string
  end
end
