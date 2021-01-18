require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  # Reverses the username
  get '/reversename/:name' do 
    @reverse = params[:name].reverse!
    "#{@reverse}"
   end


   # Squares a number

   get '/square/:number' do
    @squared = params[:number].to_i ** 2.to_i
    "#{@squared}.to_s"
   end

   # Accepts a number and a phrase and returns that phrase in a single string, the number of times given.
   get '/say/:number/:phrase' do
    return_phrase = ""
      params[:number].to_i.times do
        return_phrase += params[:phrase]
      end
    return_phrase
   end

   # Accepts 5 words and returns a string

   get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
 
# Accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided, returning a String
get '/:operation/:number1/:number2' do
  
  if 
    params[:operation] == 'add'
    answer = params[:number1].to_i + params[:number2].to_i
  elsif 
    params[:operation] == 'subtract'
    answer = params[:number1].to_i - params[:number2].to_i
  elsif
    params[:operation] == 'multiply'
    answer = params[:number1].to_i * params[:number2].to_i
  elsif
    params[:operation] == 'divide'
    answer = params[:number1].to_i / params[:number2].to_i
  end
  
  answer.to_s

end
   

end