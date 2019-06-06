require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do
        erb :user_input
    end

    post '/piglatinize' do
        pl = PigLatinizer.new
        @word = params["user_word"]
        @new_word = pl.piglatinize(@word)
        erb :new_word
    end

end