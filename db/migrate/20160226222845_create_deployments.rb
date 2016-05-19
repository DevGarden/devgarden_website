class CreateDeployments < ActiveRecord::Migration
  def change
    create_table :deployments do |t|
      t.belongs_to :project
      t.integer :phase
      t.string :url
      t.string :server_ip
      t.string :domain_name

      t.timestamps null: false
    end
  end
end
