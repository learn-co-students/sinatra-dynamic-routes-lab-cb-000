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

    get "/say/:word1/:word2/:word3/:word4/:word5" do
      phrase = [params[:word1] , params[:word2] , params[:word3] , params[:word4] , params[:word5]]
      "#{phrase.join(" ")}."
    end

    get "/:operation/:number1/:number2" do
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
      @op = params[:operation]
      output = case op
          when "multiply" then "#{@num1 * @num2}"
          when "subtract" then "#{@num1 - @num2}"
          when "divide" then "#{@num1 / @num2}"
          when "add" then "#{@num1 + @num2}"
        end
        output
    end
end
