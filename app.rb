require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    arg = params[:name]
    "#{arg.reverse}"
  end
  
  get '/square/:number' do 
    arg = params[:number].to_i
    "#{arg * arg}"
  end 
  
  get '/say/:number/:phrase' do 
    number = params[:number].to_i
    phrase = params[:phrase]
    result = ""
    number.times do 
      result += "#{phrase}\n"
    end
    result
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end 
  
  get '/:operation/:number1/:number2' do 
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    case operation
      when "add"
        result = number1 + number2
        "#{result}"
      when "subtract"
        result = number1 - number2
        "#{result}"
      when "multiply"
        result = number1 * number2
        "#{result}"
      when "divide"
        result = number1 / number2
        "#{result}"
      else 
        "Please insert valid operation: add, subtract, multiply or divide"
    end 
  end 
  
end