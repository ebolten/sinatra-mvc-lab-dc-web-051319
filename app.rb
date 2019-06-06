require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @word = params['user_word']

        @pig_latin = PigLatinizer.new

        @pig_latin.word = @word

        @new_word = @pig_latin.piglatinize

        erb :new_word
    end

end