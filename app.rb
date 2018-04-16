require "sinatra"
require "sinatra/contrib/all" if development?
also_reload("./models/*")
require_relative "./models/game.rb"

get "/game/:player1/:player2" do

end
