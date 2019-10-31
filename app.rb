require_relative 'config/environment'

class App < Sinatra::Base

get '/reversename/:name' do
  "#{params[:name].reverse}"
end

get '/square/:number' do
  @number = params[:number].to_i
  @square = @number**2
  "#{@square.to_s}"
end

get '/say/:number/:phrase' do
  phrase = ""
   params[:number].to_i.times do
    phrase += params[:phrase]
end
phrase
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  phrase = ""
   collection = params[:word1]+" " +params[:word2]+" " +params[:word3]+" " + params[:word4]+" " + params[:word5]+"."
  "#{phrase += collection}"
end

get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end
end


end
