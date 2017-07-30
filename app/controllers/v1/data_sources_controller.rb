require_relative '../../views/v1/data_sources'
require_all 'app/mutations/v1/data_sources'

module Sinatra
  module BenchmarkApi
    module V1
      module DataSourcesController
        module_function

        def registered(app)
          app.get '/v1/hello' do
            oj 'hello'
          end

          app.get '/v1/data_sources' do  
            result = ::V1::DataSources::IndexMutation.run!.page(params[:page]).per(params[:per_page] || 50)
            oj Views.index(result)
          end

          app.post '/v1/data_sources' do
            result = ::V1::DataSources::CreateMutation.run!(params)
            oj Views.show(result)  
          end

          app.put '/v1/data_sources/:id' do
            result = ::V1::DataSources::UpdateMutation.run!(params)
            oj Views.show(result)       
          end

          app.get '/v1/data_sources/:id' do
            result = ::V1::DataSources::ShowMutation.run!(id: params[:id])
            oj Views.show(result)          
          end
        end
      end
    end
  end
end