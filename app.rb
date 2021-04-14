require 'sinatra/base'
require 'sinatra/reloader' 

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name_one] = params[:name_one]
    session[:name_two] = params[:name_two]
    redirect '/play'
  end 

  get '/play' do
    @name_one = session[:name_one]
    @name_two = session[:name_two]
    erb :play
  end 

  get '/attack' do
    @name_one = session[:name_one]
    @name_two = session[:name_two]
    erb :attack
  end

  run! if app_file == $0
end