require 'trello'

api_key = "53ced9a028507ce5d67f52b83bd50ee6"

# 2.3.1 :009 >   Trello.open_authorization_url key: api_key

token = "188803bc4afa5d23e7684866534e183967840610b297758cce0e622a2f08724e"


Trello.configure do |config|
  config.developer_public_key = api_key
  config.member_token = token
end
