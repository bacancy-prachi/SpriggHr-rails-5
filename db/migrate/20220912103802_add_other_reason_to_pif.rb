class AddOtherReasonToPif < ActiveRecord::Migration[5.2]
  def change
    add_column :performance_improvements, :other_reason, :string
  end
end
