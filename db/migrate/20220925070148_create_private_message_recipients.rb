class CreatePrivateMessageRecipients < ActiveRecord::Migration[5.2]
  def change
    create_table :private_message_recipients do |t|
      t.references :private_message
      t.references :recipient
      t.timestamps
    end
    add_index :private_message_recipients, :private_message_id
    add_index :private_message_recipients, :recipient_id
  end
end
