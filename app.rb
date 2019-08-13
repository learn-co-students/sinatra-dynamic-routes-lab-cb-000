require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    total = @num * @num
    "#{total}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    num = 0
    txt = ""
    while num < @num
      txt += "#{@phrase}"
      num += 1
    end
    "#{txt}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @text = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."

    "#{@text}"
  end

  get "/:operation/:number1/:number2" do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @op == "add"
      total = @num1 + @num2
    elsif @op == "subtract"
      total = @num1 - @num2
    elsif @op == "multiply"
      total = @num1 * @num2
    elsif @op == "divide"
      total = @num1 / @num2
    end
    "#{total}"
  end
end
