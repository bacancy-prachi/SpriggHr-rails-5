class AddPeerReviewNameToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :organizations, :peer_review_name, :string, default: '360 Reviews'
  end
end
