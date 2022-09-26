class AddAttachmentToClientFeedbacks < ActiveRecord::Migration[5.2]
  def change
    add_attachment :client_feedbacks, :attachment
  end
end
