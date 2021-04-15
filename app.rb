require 'sinatra/base'
require 'sinatra/reloader' 
require './lib/player'

class Battle < Sinatra::Base
  #enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:name_one])
    $player_2 = Player.new(params[:name_two])
    redirect '/play'
  end 

  get '/play' do
    @name_one = $player_1.name
    @name_two = $player_2.name
    erb :play
  end 

  get '/attack' do
    @name_one = $player_1.name
    @name_two = $player_2.name
    @name_one.attack(@name_two)
    erb :attack
  end

  run! if app_file == $0
end