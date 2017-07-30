require 'sinatra/base'

class SinatraApi < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  register Sinatra::BenchmarkApi::V1::DataSourcesController

  def oj(content = {})
    # extra templates can be added here
    Oj.dump content
  end

  get '/' do
    'peachy'
  end
end
