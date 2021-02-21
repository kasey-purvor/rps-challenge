require 'sinatra/base'
require './lib/computer'
require './lib/player'
require './lib/match'
require './lib/round'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    p params
    erb :index
  end

  post '/names' do
    p params
    $match = Match.new(params[:player_1_name],params[:player_2_name])
    redirect '/stats'
  end

  get '/stats' do

    erb :stats
  end

  get '/play' do
    erb :play
  end

  post '/compute' do
    p params
    @round = Round.new(params[:player_1_hand], params[:player_2_hand])
    session[:last_round_winner] = @round.who_won
    redirect '/results'
  end

  get '/results' do
    p params
    @winner = session[:last_round_winner]
    $player_1.add_win if @winner == "player_1"
    $player_2.add_win if @winner == "player_2"
    erb :results
  end


  run! if app_file == $0
end
