require_relative 'config/environment'

class App < Sinatra::Base

    get "/reversename/:name" do
      @name = params[:name].reverse!
      "#{@name}"
    end

    get "/square/:number" do
      @square = params[:number].to_i
      "#{@square * @square}"
    end

    get "/say/:number/:phrase" do
      @number = params[:number].to_i
      @phrase = params[:phrase]

      new_phrase = ""

      @number.times do
        new_phrase += "#{@phrase}\n"
      end

      new_phrase
    end
end
