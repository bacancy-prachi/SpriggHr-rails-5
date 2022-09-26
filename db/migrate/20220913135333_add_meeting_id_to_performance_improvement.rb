class AddMeetingIdToPerformanceImprovement < ActiveRecord::Migration[5.2]
  def change
    add_column :performance_improvements, :meeting_id, :integer
  end
end
