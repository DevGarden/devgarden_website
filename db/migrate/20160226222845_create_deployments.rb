class CreateDeployments < ActiveRecord::Migration
  def change
    create_table :deployments do |t|
      t.integer :project_id
      t.string :phase
      t.string :url
      t.string :server_ip
      t.string :domain_name

      t.timestamps null: false
    end
  end
end
