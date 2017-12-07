require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @repeated_phrase = ""
    @number.times { @repeated_phrase << @phrase }
    "#{@repeated_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@phrase}"
  end

  get '/:operation/:number1/:number2' do
    @operator = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @result = case @operator
    when "add"
      @number1 + @number2
    when "subtract"
      @number1 - @number2
    when "multiply"
      @number1 * @number2
    when "divide"
      @number1 / @number2
    end
    "#{@result}"
  end
end
