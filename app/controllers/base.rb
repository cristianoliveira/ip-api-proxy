# frozen_string_literal: true

# This the base controller for the api.
# If the route responds Json it should inherit from it.
#
class ApiController < Sinatra::Base
  before do
    response['Access-Control-Allow-Origin'] = '*'
    response['Access-Control-Allow-Methods'] = 'GET'
    content_type :json
  end
end
