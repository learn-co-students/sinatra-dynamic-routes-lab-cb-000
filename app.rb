require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name} backwards is #{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number} squared is #{(@number.to_i ** 2).to_s }"
  end

  get '/say/:number/:phrase' do
    returned_string = ""
    params[:number].to_i.times {
      # returned_string += "<br>" if !returned_string.empty? # test does not accept this!
      returned_string += "\n" if !returned_string.empty?
      returned_string += params[:phrase]
    }
    returned_string
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    i = 0
    word_array = []
    while i <= 5
      word_array << params[("word" + i.to_s).to_sym]
      i += 1
    end
    return word_array.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when "add"
        return (num1 + num2).to_s
      when "subtract"
        return (num1 - num2).to_s
      when "multiply"
        return (num1 * num2).to_s
      when "divide"
        return (num1 / num2).to_s
    end
  end
end
