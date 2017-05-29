# frozen_string_literal: true

require 'sinatra'
require 'sinatra/base'
require 'sinatra/activerecord'
require 'sinatra/json'
require 'sinatra/param'
require 'sinatra/cross_origin'

require 'json'
require 'faraday'
require 'uri'
require 'net/http'

require_relative 'app/controllers/base.rb'
require_relative 'app/controllers/main.rb'

# The app routes.
#
class App
  VERSION = '0.0.1'

  def self.routes
    {
      '/' => MainController
    }
  end
end
