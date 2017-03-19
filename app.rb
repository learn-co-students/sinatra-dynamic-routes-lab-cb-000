require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number*@number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrases = ""
    @number.times { @phrases << "#{@phrase}\n"}
    "#{@phrases}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = params[:captures].join(' ') << '.'
    "#{@sentence}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    @operator = case @operation
    when "add"
      "+"
    when "subtract"
      "-"
    when "multiply"
      "*"
    when "divide"
      "/"
    end
    @results = @number1.send("#{@operator}", @number2)
    "#{@results}"
  end


end
