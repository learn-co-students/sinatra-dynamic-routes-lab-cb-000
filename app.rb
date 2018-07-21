require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    @product = params[:number].to_i * params[:number].to_i
    "#{@product}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    answer = ''

    @number.times do
      answer += @phrase
    end

    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params}"
    phrase = ''
    params.each do |k,v|
      phrase += v
      if k == 'word5'
        phrase += '.'
      else
        phrase += " "
      end
    end
    phrase
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      answer = (params[:number1].to_i) + (params[:number2].to_i)
    when "subtract"
      answer = (params[:number1].to_i) - (params[:number2].to_i)
    when "multiply"
      answer = (params[:number1].to_i) * (params[:number2].to_i)
    when "divide"
      answer = (params[:number1].to_i) / (params[:number2].to_i)
    end

    answer.to_s
  end

end

params = {"word1"=>"word1", "word2"=>"word2", "word3"=>"word3", "word4"=>"word4", "word5"=>"word5"}
