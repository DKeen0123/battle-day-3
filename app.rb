require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    # 'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:Player1]
    session[:player2] = params[:Player2]
    redirect "/battle"
  end

  get "/battle" do
    p @player1 = session[:player1]
    p @player2 = session[:player2]
    erb(:play)
  end

  get '/attack' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:attack)
  end

  # start the server if ruby file executed directly

  run! if app_file == $0

end
