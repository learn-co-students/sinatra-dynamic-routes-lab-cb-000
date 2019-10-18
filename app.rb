require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @string = ""
    params[:number].to_i.times do
    @string += "#{params[:phrase]}\n"
    end
    @string
  end


  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
end


  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation == "add"
    return (@number1 + @number2).to_s
  elsif @operation == "subtract"
      return (@number1 - @number2).to_s
    elsif @operation == "multiply"
      return (@number1 * @number2).to_s
    elsif @operation == "divide"
      return (@number1/@number2).to_s
    end
  end
end
