require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name].to_s.reverse!
    "#{@name}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    if @operation == "add"
      @add = params[:number1].to_i + params[:number2].to_i
      "#{@add}"
    elsif @operation == "subtract"
      @subtract = params[:number1].to_i - params[:number2].to_i
      "#{@subtract}"
    elsif @operation == "multiply"
      @multiply = params[:number1].to_i * params[:number2].to_i
      "#{@multiply}"
    elsif @operation == "divide"
      @divide = params[:number1].to_i / params[:number2].to_i
      "#{@divide}"
    end
  end

end
