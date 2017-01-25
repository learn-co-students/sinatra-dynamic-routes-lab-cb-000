require_relative 'config/environment'

class App < Sinatra::Base

  get'/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get'/square/:number' do
    num = params[:number].to_i
    "#{num*num}"
  end

  get'/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]

    result = []
    num.times {result << phrase}
    "#{result.join("\n")}"     
  end

  get'/say/:word1/:word2/:word3/:word4/:word5' do
    words = [params[:word1],params[:word2],params[:word3],
            params[:word4],params[:word5]]
    "#{words.join(" ")}."
  end

  get'/:operation/:number1/:number2' do
    number = [params[:number1].to_i,params[:number2].to_i]
    op =  case params[:operation]
          when 'add';       "+"
          when 'subtract';  "-"
          when 'multiply';  "*"
          when 'divide';    "/"
          end
    "#{number[0].send(op,number[1])}"
  end

end