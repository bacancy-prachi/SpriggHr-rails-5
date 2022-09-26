class CreateBamboohrApiIntegrationRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :bamboohr_api_integration_requests do |t|
      t.references :organization
      t.references :employee
      t.references :bamboohr_api_integration
      t.string :request_type
      t.text :issues
      t.timestamps
    end
    add_index :bamboohr_api_integration_requests, :organization_id
    add_index :bamboohr_api_integration_requests, :employee_id
    add_index :bamboohr_api_integration_requests, :bamboohr_api_integration_id, name: 'bhr_api_integration_req_br_api_integration_id'
  end
end
