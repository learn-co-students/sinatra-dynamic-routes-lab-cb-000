require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get "/square/:number" do
    @number = params[:number]
    "#{@number.to_i**2}"
  end
  
  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    result = ""
    @number.to_i.times do
      result += @phrase + " "
    end
    "#{result}"

  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    result = @word1 + ' ' + @word2 + ' ' + @word3 + ' ' + @word4 + ' ' + @word5
    "#{result}."
  end
  
  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @n1 = params[:number1]
    @n2 = params[:number2]
    result = 0
    if @operation == 'add'
      result = @n1.to_i + @n2.to_i
    elsif @operation == 'subtract'
      result = @n1.to_i - @n2.to_i
    elsif @operation == 'multiply'
      result = @n1.to_i * @n2.to_i
    elsif @operation == 'divide'
      result = @n1.to_i / @n2.to_i
    end
    
    "#{result}"
  end
  
end