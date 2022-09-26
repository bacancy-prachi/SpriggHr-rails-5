class AddDottedJobThreateningToAfIs < ActiveRecord::Migration[5.2]
  def change
    add_column :area_for_improvements, :dotted_job_threatening, :boolean
  end
end
