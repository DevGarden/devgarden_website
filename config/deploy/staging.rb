set :stage, :production

server '52.3.179.157', user: 'devgarden_website', roles: %w{app}, "DOMAIN_NAME": "staging.devgarden.io"
set :linked_files, %w{config/secrets.yml}
