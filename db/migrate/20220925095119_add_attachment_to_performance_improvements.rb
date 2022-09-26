class AddAttachmentToPerformanceImprovements < ActiveRecord::Migration[5.2]
  def change
    add_attachment :performance_improvements, :attachment
  end
end
