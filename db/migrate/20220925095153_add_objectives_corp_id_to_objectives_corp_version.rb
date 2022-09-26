class AddObjectivesCorpIdToObjectivesCorpVersion < ActiveRecord::Migration[5.2]
  def change
    add_column :objectives_corp_versions, :objectives_corp_id, :integer
  end
end
