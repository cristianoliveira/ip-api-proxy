# frozen_string_literal: true

# This the base controller for the api.
# If the route responds Json it should inherit from it.
#
class ApiController < Sinatra::Base
  register Sinatra::CrossOrigin

  before do
    cross_origin
    content_type :json
  end
end
