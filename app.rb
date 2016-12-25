require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name].split('')
    name.reverse.join('')
  end

  get '/square/:number' do
    num = params[:number].to_i
    (num*num).to_s
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
    str = []
    num.times do
      str << phrase.gsub('%20', ' ')
    end
    str.join("\n")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    result = ""

    op = params[:operation]

    case op
    when 'add'
      result = num1 + num2
    when 'subtract'
      result = num1 - num2
    when 'multiply'
      result = num1 * num2
    when 'divide'
      result = num1 / num2
    end

    result.to_s


  end


end
