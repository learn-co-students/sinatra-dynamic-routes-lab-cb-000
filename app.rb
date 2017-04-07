require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do |name|
    name.reverse
  end

  get '/square/:number' do |number|
    square = number.to_i ** 2

    square.to_s
  end

  get '/say/:number/:phrase' do |number, phrase|
    (phrase + "\n") * number.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = (1..5).map { |num| params["word#{num}"] }

    words.join(' ') + '.'
  end

  get '/:operation/:number1/:number2' do |operation, num1, num2|
    operators = { add: :+, subtract: :-, multiply: :*, divide: :/ }
    num1 = num1.to_i
    num2 = num2.to_i
    operator = operators[operation.to_sym]

    result = num1.to_i.send(operator, num2)
    result.to_s
  end
end
