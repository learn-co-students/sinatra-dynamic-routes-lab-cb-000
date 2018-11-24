require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end
  
  get "/square/:number" do
    @number = params[:number].to_i
    @total = @number * @number
    "#{@total}"
  end
  
  get "/say/:number/:phrase" do
    @new_phrase = []
    params[:number].to_i.times do
    @new_phrase << params[:phrase]
    end
    @new_phrase
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]}."
  end
  
  get "/:operation/:number1/:number2" do
    @operator = params[:operation]
    if @operator == "add"
      return "#{params[:number1].to_i.+(params[:number2].to_i)}"
    elsif @operator == "subtract"
      return "#{params[:number1].to_i.-(params[:number2].to_i)}"
    elsif @operator == "multiply"
      return "#{params[:number1].to_i.*(params[:number2].to_i)}"   
    elsif @operator == "divide"
      return "#{params[:number1].to_i / params[:number2].to_i}"      
    end
  end
end