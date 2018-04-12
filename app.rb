require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i*params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = ''
    params[:number].to_i.times do
      @phrase += "#{params[:phrase]}\n"
    end
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @op
    when 'add'
      @prod = @num1+@num2
      "#{@prod}"
    when "subtract"
      @prod = @num1-@num2
      "#{@prod}"
    when "multiply"
      @prod = @num1*@num2
      "#{@prod}"
    when "divide"
      @prod = @num1/@num2
      "#{@prod}"
    end
  end
end
