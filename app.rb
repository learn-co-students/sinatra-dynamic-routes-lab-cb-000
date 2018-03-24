require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do

    a = params[:number].to_i 
    a = a * a
    "#{a}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase * number }"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    a = params[:number1].to_i
    b = params[:number2].to_i
    case params[:operation]
    when 'add'
      "#{a + b}"
    when 'subtract'
      "#{a - b}"
    when 'multiply'
      "#{a * b}"
    when 'divide'
      "#{a / b}"
    end
  end
end

