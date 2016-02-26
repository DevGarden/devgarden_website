require 'grape'
require 'grape-swagger'

class API < Grape::API
  format :json
  formatter :json, Grape::Formatter::Jbuilder
  prefix 'api'
  version 'v1', using: :path

  mount Echo

  add_swagger_documentation hide_documentation_path: true,
                api_version: "v1",
                mount_path: "swagger_doc.json"
end