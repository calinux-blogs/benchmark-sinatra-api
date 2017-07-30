require 'rubygems'
require 'bundler'

Bundler.require :default, ENV['RACK_ENV'] || 'development'

require 'active_support/all'

require_all 'lib', 'app/models', 'app/mutations', 'app/views', 'app/controllers'
Dir.glob('config/initializers/**/*.rb').each { |i| load i }
