require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    def reverse_name(name)
      split_string = name.split("")
      reversed = []
      name.size.times { reversed << split_string.pop }
      reversed.join
     end
     "#{reverse_name(params[:name])}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    @result = ""
    params[:number].to_i.times {|i| @result += params[:phrase] += "\n"}
    "#{@result}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{@word}"
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == 'add'
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation] == 'subtract'
      "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation] == 'multiply'
      "#{params[:number1].to_i * params[:number2].to_i}"
    elsif params[:operation] == 'divide' && params[:number2].to_i == 0
        "ZeroDivisionError"
    elsif params[:operation] == 'divide'
      "#{params[:number1].to_i / params[:number2].to_i}"
    else
      "invalid operation"
    end
  end

end



#Create a dynamic route at get '/reversename/:name' that accepts a name and renders the name backwards.

#Create a dynamic route at get '/square/:number' that accepts a number and returns the square of that number.
#Note: Remember that values in params always come in as strings, and your return value for the route should also be a string
#(use .to_i and .to_s).

#Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in a string the
# number of times given.

#Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string containing
# all five words (i.e. word1 word2 word3 word4 word5).

#Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide)
# and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.
