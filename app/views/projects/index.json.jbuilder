json.array!(@projects) do |project|
  json.extract! project, :id, :client_id, :name, :github_repo, :jira_project_id, :toggle_project_id, :google_drive_url
  json.url project_url(project, format: :json)
end
