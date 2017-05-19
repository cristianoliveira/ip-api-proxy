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

Dir.glob(File.join(__dir__, 'app/controllers/*.rb')).each { |file| require file }

# The app routes.
#
class App
  VERSION = '0.0.1'

  def self.routes
    {
      '/' => MainController,
    }
  end
end
