# server.rb

require 'sinatra'

get '/', :provides => 'application/json' do
  if "#{ request.env['HTTP_ACCEPT'] }" == 'application/json'
    '{"message": "Good morning"}'
  else
    '<p>Hello, World</p>'
  end
end
