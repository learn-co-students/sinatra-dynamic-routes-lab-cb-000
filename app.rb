require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:num' do
    @num = params[:num].to_i
    "#{@num * @num}"
  end

  get '/say/:count/:phrase' do
    @count = params[:count].to_i
    @phrase = params[:phrase]
    "#{@phrase * @count}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1 + ' ' + @word2 + ' ' + @word3 + ' ' + @word4 + ' ' + @word5 + '.'}"
  end

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
