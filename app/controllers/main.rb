# frozen_string_literal: true

# Main Controller
#
class MainController < ApiController
  get '/' do
    data = Faraday.get("http://ip-api.com/json/#{request.ip}")
    data.body
  end

  get '/ip/:ip' do
    data = Faraday.get("http://ip-api.com/json/#{params[:ip]}")
    data.body
  end

  get '/version' do
    { version: App::VERSION }.to_json
  end
end
