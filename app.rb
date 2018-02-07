require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    # 'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:Player1]).name
    $player2 = Player.new(params[:Player2]).name
    redirect "/battle"
  end

  get "/battle" do
    erb(:play)
  end

  get '/attack' do
    erb(:attack)
  end

  # start the server if ruby file executed directly

  run! if app_file == $0

end
