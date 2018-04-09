require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    @number_product = @number * @number
    "#{@number_product.to_s}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @return_phrase = ''
    @num.times do
      @return_phrase << "#{@phrase} "
    end
    @return_phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1, @word2, @word3, @word4, @word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @operation, @number1, @number2 = params[:operation], params[:number1].to_i, params[:number2].to_i
    case @operation
    when 'add'
      "#{@number1 + @number2}"
    when 'subtract'
      "#{@number1 - @number2}"
    when 'multiply'
      "#{@number1 * @number2}"
    when 'divide'
      "#{@number1 / @number2}"
    end
  end

end
