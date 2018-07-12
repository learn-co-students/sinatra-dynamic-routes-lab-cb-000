require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    Array.new(@num, @phrase).join
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]

    "#{word1 + " " +  word2 + " " +  word3 + " " +  word4 + " " +  word5}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    if operation == "add"
      "#{n1 + n2}"
    elsif operation == "subtract"
      "#{n1 - n2}"
    elsif operation == "multiply"
      "#{n1 * n2}"
    elsif operation == "divide"
      "#{n1.to_f / n2.to_f}"
    else
      "Not a Valid Operation or Number.  Please Fix yo self..."
    end
  end

end
