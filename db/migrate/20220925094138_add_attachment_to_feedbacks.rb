class AddAttachmentToFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_attachment :feedbacks, :attachment
  end
end
