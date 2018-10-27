require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:num' do
    @squared = params[:num].to_i**2
    "#{@squared}"
  end

  get '/say/:num/:phrase' do
    @phrase = ""
    params[:num].to_i.times do |i|
      @phrase += "#{params[:phrase]}\n"
    end
    @phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    @sentence
  end

  get '/:operation/:num1/:num2' do
    if params[:operation] == "add"
      "#{params[:num1].to_i + params[:num2].to_i}"
    elsif params[:operation] == "subtract"
      "#{params[:num1].to_i - params[:num2].to_i}"
    elsif params[:operation] == "divide"
      "#{params[:num1].to_i / params[:num2].to_i}"
    elsif params[:operation] == "multiply"
      "#{params[:num1].to_i * params[:num2].to_i}"
    else
      "I can't do that"
    end
  end
end
