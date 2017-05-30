# frozen_string_literal: true

workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['RAILS_MAX_THREADS'] || 5)
threads threads_count, threads_count

preload_app!

rackup DefaultRackup

# for https
#ssl_bind '0.0.0.0', ENV['PORT'], {
#  key: 'server.key',
#  cert: 'server.crt'
#}

port ENV['PORT'] || '5000'
environment ENV['RACK_ENV'] || 'development'
