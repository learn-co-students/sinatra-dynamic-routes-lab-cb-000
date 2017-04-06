require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "Reversing the name.... #{@name.reverse}"
  end

  get '/square/:num' do
    @num = params[:num].to_i
    "Here's your number squared: #{@num ** 2}"
  end

  get '/say/:num/:phrase' do
    @num = params[:num].to_i
    @phrase = params[:phrase] + "\n"

    "#{@phrase * @num}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @str = params.values.select do |v|
      params.key(v).include?('word')
    end.join(' ') + '.'

    "And the phrase is..... #{@str}"
  end

  get '/:operation/:num1/:num2' do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i

    @actions = {
      add:      (@num1 + @num2),
      subtract: (@num1 - @num2),
      multiply: (@num1 * @num2),
      divide:   (@num1 / @num2)
    }

    "The result is: #{@actions[params[:operation].to_sym]}"
  end

end