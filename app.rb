require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name_reversed = params[:name].reverse
    erb :'reversename.html'
  end

  get '/square/:number' do
    @num_squared = params[:number].to_i ** 2
    erb :'square.html'
  end

  get '/say/:number/:phrase' do
    @phrases = params[:number].to_i.times.collect{params[:phrase]}.join(' ')
    erb :'say_n_phrase.html'
  end

  get '/:operation/:number1/:number2' do
    operators = {add: '+',subtract: '-',multiply: '*',divide: '/'}
    @result = params[:number1].to_i.public_send(operators[params[:operation].to_sym], params[:number2].to_i)
    erb :'operation.html'
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = params.collect{|k, v| v if k.to_s.include?('word')}.join(' ')
    erb :'say_five_words.html'
  end
end
