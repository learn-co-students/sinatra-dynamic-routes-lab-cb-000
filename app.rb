require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    #accepts a name and renders the name backwards
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    #accepts a number and returns the square of that number
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
      #accepts a number and a phrase and returns the phrase in a string the number of times given
      @number = params[:number].to_i
      @phrase = params[:phrase]
      @result = ""
      @number.times do
        @result << @phrase
      end
      "#{@result}"
      # "#{@phrase} #{@number} times"
      # @number.times do
      #   "ph yeah"
      #   end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #accepts five words and returns a string with them formatted as a sentence
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    #accepts an operation (a,s,m,d) and performs the operation on the
    #two numbers provided.
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    @result = nil
    if @operation == "add"
      @result = @number1 + @number2
    elsif @operation == "subtract"
      @result = @number1 - @number2
    elsif @operation == "multiply"
      @result = @number1 * @number2
    elsif @operation == "divide"
      @result = @number1 / @number2
    else
      @result = "Nada"
    end
    "#{@result}"
  end


end
#
#
# require_relative 'config/environment'
#
# class App < Sinatra::Base
#
#   # This is a sample static route.
#   get '/hello' do
#     "Hello World!"
#   end
#
#   # This is a sample dynamic route.
#   get "/hello/:name" do
#     @user_name = params[:name]
#     "Hello #{@user_name}!"
#   end
#
#   # Code your final two routes here:
#
#   get "/goodbye/:name" do
#     @user_name = params[:name]
#     "Goodbye, #{@user_name}."
#   end
#
#   get "/multiply/:num1/:num2" do
#     # get '/multiply/6/6'
#     @num1 = params[:num1].to_i
#     @num2 = params[:num2].to_i
#     # product = @num1 * @num2
#     # "#{product}"
#     # "36"
#     "#{@num1 * @num2}"
#   end
#
# end
