ENV['RACK_ENV'] = 'test'

require '../server/server'  # <-- your sinatra app
require 'rspec'
require 'rack/test'

describe 'The HelloWorld App' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it "says hello" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('<p>Hello, World</p>')
  end

  it "says good morning" do
    header 'accept', 'application/json'
    get '/', 'HTTP_ACCEPT': 'application/json'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('{"message": "Good morning"}')
  end
end
