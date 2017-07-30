task :routes do
  require_relative '../../config/environment'
  require 'sinatra'

  SinatraApi.routes["GET"].try(:each) do |route|
    puts route[0]
  end

  SinatraApi.routes["POST"].try(:each) do |route|
    puts route[0]
  end

  SinatraApi.routes["PUT"].try(:each) do |route|
    puts route[0]
  end
end