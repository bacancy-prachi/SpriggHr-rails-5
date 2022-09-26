class AddUiDtoMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :uid, :string
  end
end
