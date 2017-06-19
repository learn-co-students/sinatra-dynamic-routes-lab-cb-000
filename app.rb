require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    name.reverse
  end

  get '/square/:number' do
    number = params[:number]
    "#{number.to_i * number.to_i}"
  end

  get '/say/:number/:phrase' do
    phrase = params[:phrase]
    number = params[:number].to_i
    "#{phrase}\n" * number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    one   = params[:word1]
    two   = params[:word2]
    three = params[:word3]
    four  = params[:word4]
    five  = params[:word5]
    "#{one} #{two} #{three} #{four} #{five}."
  end

  get '/:operation/:number1/:number2' do
    one = params[:number1].to_i
    two = params[:number2].to_i
    operation = params[:operation]
    one operation two
  end

end
