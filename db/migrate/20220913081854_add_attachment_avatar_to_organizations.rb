class AddAttachmentAvatarToOrganizations < ActiveRecord::Migration[5.2]
  def change
    change_table :organizations do |t|
      t.attachment :avatar
    end
  end
end
