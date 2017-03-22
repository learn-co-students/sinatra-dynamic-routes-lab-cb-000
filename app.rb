require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i**2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    string = ""
    @number.times do
      string += "#{@phrase}\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:captures].join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if params[:operation] == 'add'
      "<h1>#{@num1} + #{@num2} = #{@num1 + @num2}</h1>"
    elsif params[:operation] == 'subtract'
      "<h1>#{@num1} - #{@num2} = #{@num1 - @num2}</h1>"
    elsif params[:operation] == 'multiply'
      "<h1>#{@num1} * #{@num2} = #{@num1 * @num2}</h1>"
    elsif params[:operation] == 'divide'
      "<h1>#{@num1} / #{@num2} = #{@num1 / @num2}</h1>"
    elsif params[:operation] == 'cube'
      "<h1>#{@num1} cubed = #{@num1**3}</h1>"
    end
  end

end