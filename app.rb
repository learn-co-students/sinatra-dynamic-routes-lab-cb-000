require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @number.times do
      @string += @phrase
    end
    "#{@string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@string}"
  end
  class Calc
    def add(arg1, arg2)
      sum = arg1 + arg2
    end
    def subtract(arg1, arg2)
      difference = arg1 - arg2
    end
    def multiply(arg1, arg2)
      product = arg1 * arg2
    end
    def divide(arg1, arg2)
      quotient = arg1 / arg2
    end
  end
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    joey = Calc.new
    @value = joey.send "#{@operation}", @number1, @number2
    "#{@value}"
  end

end
