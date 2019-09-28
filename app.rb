require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i * @num.to_i}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number]
    "#{@phrase}\n" * @num.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1]
    @num2 = params[:number2]
    case params[:operation]
    when "add"
      "#{@num1.to_i + @num2.to_i}"
    when "subtract"
      "#{@num1.to_i - @num2.to_i}"
    when "multiply"
      "#{@num1.to_i * @num2.to_i}"
    when "divide"
      "#{@num1.to_i / @num2.to_i}"
    end
  end

end
