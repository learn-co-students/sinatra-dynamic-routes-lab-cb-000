require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "Your name backwards is #{@name.reverse}"
  end

  get '/square/:number' do
    @numb = params[:number].to_i
    (@numb * @numb).to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  # get '/:operation/:number1/:number2' do
  #   @operation = params[:operation]
  #   @num1 = params[:number1].to_i
  #   @num2 = params[:number2].to_i
  #
  # case @operation
  #   when "add"
  #      output = @num1 + @num2
  #   when "subtract"
  #     output = @num1 - @num2
  #   when "multiply"
  #     output = @num1 * @num2
  #   when "divide"
  #     output = @num1 / @num2
  #   else
  #     output = "Not valid input"
  #   end
  #
  #   output.to_i
  # end
  get '/:operation/:num1/:num2' do
      @operation = params[:operation]
      @num1 = params[:num1].to_i
      @num2 = params[:num2].to_i
      if @operation == 'add'
        "#{@num1 + @num2}"
      elsif @operation == 'subtract'
        "#{@num1 - @num2}"
      elsif @operation == 'multiply'
        "#{@num1 * @num2}"
      elsif @operation == 'divide'
        "#{@num1 / @num2}"
      else
        "Unknown operation."
      end
    end

end
