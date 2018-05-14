require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    square = params[:number].to_i ** 2
    "#{square}"
  end

  get '/say/:number/:phrase' do
    string = ''
    params[:number].to_i.times { string += params[:phrase] }
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i

    answer = 'Please use a valid operator: add, subtract, multiply, or divide.'

    case params[:operation]
    when 'add'
      answer = (num_1 + num_2).to_s
    when 'subtract'
      answer = (num_1 - num_2).to_s
    when 'multiply'
      answer = (num_1 * num_2).to_s
    when 'divide'
      answer = (num_1 / num_2).to_s
    end
    "#{answer}"
  end

end
