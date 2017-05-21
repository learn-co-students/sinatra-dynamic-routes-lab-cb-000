require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end
  
  get '/square/:number' do
    number = params[:number].to_i
    number *= number
    "#{number}"
  end
  
  get '/say/:number/:phrase' do 
    number = params[:number].to_i
    phrase = params[:phrase]
    final_String = ""
    number.times do
      final_String << "#{phrase}\n"
    end
    final_String
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
    case  operation
      when "add"
        result = number1 + number2
        "#{result}"
      when "subtract"
        result = number1 -  number2
       "#{result}"
      when "multiply"
        result = number1 * number2
        "#{result}"
      when "divide"
        result = number1 / number2
        "#{result}"
      else
        "Please specify a valid arithmetic operation"
      end
  end

end
