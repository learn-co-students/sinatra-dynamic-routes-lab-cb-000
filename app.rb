require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "Your name backwards is #{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num} squared is #{@num * @num}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    str = ""

    num.times do
      str += "#{params[:phrase]}\n"
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    values = []
    phrase = params['captures'].join(" ")
    "#{phrase}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case op
    when 'add'
      "#{num1} + #{num2} = #{num1 + num2}"
    when 'subtract'
      "#{num1} - #{num2} = #{num1 - num2}"
    when 'multiply'
      "#{num1} * #{num2} = #{num1 * num2}"
    when 'divide'
      "#{num1} / #{num2} = #{num1 / num2}"
    else
      'Your selected operation is invalid. Please enter add, subtract, multiply, or divide.'
    end
  end

end
