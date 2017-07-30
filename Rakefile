require 'rake'
require 'sinatra/activerecord/rake'
require './config/environment'

namespace :db do
  task :load_config do
    require './lib/sinatra_api'
  end
end

load './lib/tasks/routes.rake'