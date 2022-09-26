class AddAttachmentsToStatusUpdates < ActiveRecord::Migration[5.2]
  def change
    add_attachment :status_updates, :attachment
  end
end
