require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    name = params[:name]
    "Your name reversed is #{name.reverse}!"
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number**2}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]

    output = Array.new(number, phrase).join("\n")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = params.values
    "#{words.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation].downcase
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case operation
    when "add"
      "#{num1 + num2}"
    when "subtract"
      "#{num1 - num2}"
    when "multiply"
      "#{num1 * num2}"
    when "divide"
      num2 != 0 ? "#{(num1.to_f / num2.to_f)}" : "Cannot divide by 0!"
    else
      "Not a valid operation"
    end
  end
end
