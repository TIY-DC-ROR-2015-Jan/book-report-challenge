require 'sinatra/base'
require './db/setup'
require './lib/all'

class Reportr < Sinatra::Base
  get '/' do
    erb :home
  end

  # ...

  get '/reports/:id' do
    @report = BookReport.find params[:id]
    erb :show
  end
end

Reportr.run! if $PROGRAM_NAME == __FILE__
