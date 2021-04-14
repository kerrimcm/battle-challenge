require 'sinatra/base'
require 'sinatra/reloader' 

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
    
  get '/' do
    erb :index
  end

  post '/names' do
    @name_one = params[:name_one]
    @name_two = params[:name_two]
    erb :play
  end 

  run! if app_file == $0
end