require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    # 'Testing infrastructure working!'
    erb(:index)
  end

  post '/names' do
    @player1 = params[:Player1]
    @player2 = params[:Player2]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
