require './config/environment'

use Rack::ResponseHeaders do |headers|
  headers['Content-Type'] = 'application/json;charset=utf-8'
  headers['Access-Control-Allow-Origin'] = '*'
end
use Rack::PostBodyContentTypeParser

run SinatraApi