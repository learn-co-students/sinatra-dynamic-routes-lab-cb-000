require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name_backwards = params[:name].reverse
    "#{@name_backwards}"
  end

  get "/square/:number" do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    "#{@phrase}" * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do

    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
      when "add"
        @result = @num1 + @num2
        "#{@result}"

      when "subtract"
        @result = @num2 - @num1
        "#{@result}"

      when "multiply"
        @result = @num1 * @num2
        "#{@result}"

      when "divide"
        @result = @num1 / @num2
        "#{@result}"
    end


    #@subtracted_numbers = params[:number2].to_i - params[:number1].to_i
    #"#{@subtracted_numbers}"
  end

end
