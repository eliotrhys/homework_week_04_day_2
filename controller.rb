require('sinatra')
require('sinatra/reloader')
require('./models/game')

get '/game/:player1/:player2' do

  result = Game.new(params[:player1], params[:player2])
  @game = result.play()
  erb(:result)

end
