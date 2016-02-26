json.array!(@deployments) do |deployment|
  json.extract! deployment, :id, :project_id, :phase, :url, :server_ip, :domain_name
  json.url deployment_url(deployment, format: :json)
end
