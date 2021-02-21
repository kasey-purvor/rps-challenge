require 'sinatra/base'
require './lib/computer'
require './lib/player'
require './lib/match'
require './lib/round'
require './lib/scores'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    p params
    erb :index
  end

  post '/names' do
    p params
    $game = Match.new
    $player_1 = Player.new
    $player_2 = Player.new
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/stats'
  end

  get '/stats' do
    @player_1_name = params[:player_1_name]
    @player_1_name = params[:player_2_name]
    erb :stats
  end





  run! if app_file == $0
end
