class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.references :sender
      t.text :message
      t.string :conversation_identifier
      t.integer :group_id
      t.timestamps
    end
    add_index :private_messages, :sender_id
  end
end
