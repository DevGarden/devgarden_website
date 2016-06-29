json.array!(@projects) do |project|
  json.extract! project, :id, :client_id, :name, :trello_project_id, :toggl_project_id, :google_drive_url
  json.url project_url(project, format: :json)
end
