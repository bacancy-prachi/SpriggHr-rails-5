class AddHiddenMeetingIdToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :meetings, :hidden_id, :integer

    add_column :assigned_goals, :meeting_id, :integer
    add_column :goals, :meeting_id, :integer
    add_column :team_goals, :meeting_id, :integer
  end
end
