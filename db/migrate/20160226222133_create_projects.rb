class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :client_id
      t.string :name
      t.string :github_repo
      t.string :jira_project_id
      t.string :toggle_project_id
      t.string :google_drive_url

      t.timestamps null: false
    end
  end
end
