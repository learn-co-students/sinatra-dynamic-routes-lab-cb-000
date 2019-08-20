#require "pry"
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "This is root"
  end

  get '/reversename/:name' do
    @name = params[:name]
    @reversed = @name.reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @number = params[:number]
    @square = @number.to_i*@number.to_i
    @square = @square.to_s
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase*@number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params[:captures]
    @sentence = ""
    @words.each do |w|
      @sentence << " #{w}"
    end
    "#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
      when "add"
        @addition = @num1 + @num2
        "#{@addition}"
      when "subtract"
        @subtraction = @num1 - @num2
        "#{@subtraction}"
      when "multiply"
        @multiplication = @num1 * @num2
        "#{@multiplication}"
      when "divide"
        @divide = @num1/@num2
        "#{@divide}"
    end
  end
end
