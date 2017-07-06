# frozen_string_literal: true

# Main Controller
#
class MainController < ApiController
  get '/' do
    data = Faraday.get("http://ip-api.com/json/#{client_ip}")
    data.body
  end

  get '/ip/:ip' do
    data = Faraday.get("http://ip-api.com/json/#{params[:ip]}")
    data.body
  end

  get '/version' do
    { version: App::VERSION }.to_json
  end

  error do
    { error: "ip api is not answering." }
  end

  private

  def client_ip
    # When running under cloudflare/cloudfront we need to get the
    # client IP from this header cause the request.id is from CF then
    return request.ip unless request.env['HTTP_X_FORWARDED_FOR']

    request.env['HTTP_X_FORWARDED_FOR'].split(',').first
  end
end
