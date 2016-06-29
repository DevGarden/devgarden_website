class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.belongs_to :client
      t.string :name
      t.string :description, limit: 1000
      t.string :trello_project_id
      t.string :toggl_project_id
      t.string :google_drive_url

      t.timestamps null: false
    end
  end
end
