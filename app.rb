require_relative 'config/environment'

class App < Sinatra::Base
  # accepts a name and renders the name backwards
  get '/reversename/:name' do
    #"#{params[:name].reverse}"
    params[:name].reverse
  end

  # accepts a number and returns the square of that number
  get '/square/:number' do
    #(params[:number].to_i ** 2).to_s
    "#{(params[:number].to_i ** 2)}"
  end

  # accepts a number and a phrase and returns that phrase in a string the number of times given
  get '/say/:number/:phrase' do
    # "#{params[:phrase] * params[:number].to_i}"
    "#{params[:phrase]}\n" * params[:number].to_i
  end

  # accepts five words and returns a string containing all five words
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  # accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided (For example, going to /add/1/2 should render 3)
  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case true
    when operation == "add"
      "#{num1 + num2}"
    when operation == "subtract"
      "#{num1 - num2}"
    when operation == "multiply"
      "#{num1 * num2}"
    when operation == "divide"
      "#{num1 / num2}"
    end
  end
end
