require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do 
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number*@number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @output = ""
    @number.times { @output << "#{@phrase}\n" }
    "#{@output}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @sentence = params[:captures].join(' ') << '.'
    "#{@sentence}"
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    @operator = case @operation
    when "add"
      "*"
    when "subtract"
      "-"
    when "multiply"
      "*"
    when "divide"
      "/"
    end
    @result = @number1.send("#{@operator}", @number2)
    "#{@result}"
  end

end