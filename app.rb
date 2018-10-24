require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    square = number * number
    square.to_s
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    whole_phrase = ""
    (number).times do
       whole_phrase += phrase
     end
     whole_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    words.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case operation
    when "add"
      new_num = num1 + num2
    when "subtract"
      new_num = num1 - num2
    when "multiply"
      new_num = num1 * num2
    when "divide"
      new_num = num1 / num2
    else
      new_num = nil
    end
    new_num.to_s
  end
end
