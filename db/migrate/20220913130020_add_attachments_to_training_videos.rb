class AddAttachmentsToTrainingVideos < ActiveRecord::Migration[5.2]
  def change
    add_attachment :training_videos, :video
    add_attachment :training_videos, :thumbnail
  end
end
