require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new
    $player1 = Player.new(params[:name1])
    $player2 = Player.new(params[:name2])
    redirect '/play'
  end

  get '/play' do
    @name1 = $player1
    @name2 = $player2
    erb :play
  end

  get '/attacks' do
    @name1 = $player1
    @name2 = $player2
    $game.attack(@name2)
    # erb :attack
  redirect '/play'
  end

end
