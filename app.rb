require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
      "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @return_string = ""
    @number.times do
      @return_string += "#{@phrase}"
    end
    @return_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @result = nil
    case @operation
    when "add"
      @result = @number1 + @number2
    when "subtract"
      @result = @number1 - @number2
    when "multiply"
      @result = @number1 * @number2
    when "divide"
      @result = @number1 / @number2
    end
    "#{@result}"
  end
end
