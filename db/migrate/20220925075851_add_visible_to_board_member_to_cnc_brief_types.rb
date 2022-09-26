class AddVisibleToBoardMemberToCncBriefTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :cnc_brief_types, :visible_to_board_member, :boolean, default: 0
  end
end
