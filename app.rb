require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!


  # This is a dynamic route.
  get "/reversename/:name" do
    params[:name].reverse #it reverses the name passed in
  end

  # This is a dynamic route.
  get "/square/:number" do
    num = params[:number]
    (num.to_i**2).to_s #turn number passed in to integer, multiply it and then turn back to string for return value.
  end


    get '/say/:number/:phrase' do
      final_string = ""
      (params[:number].to_i).times do #create a loop. do it as many times as the number passed in.
        final_string += "#{params[:phrase]}\n" #puts out the phrase passed in.
      end
      final_string
    end

    get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}." #add all words into one string
   end

   get '/:operation/:number1/:number2' do
  operation = params[:operation]
  number1 = params[:number1].to_i #takes numbers and turns into integers
  number2 = params[:number2].to_i
  if operation == "add"  #if else statement to create options
    answer = number1 + number2
  elsif operation == "subtract"
    answer = number1 - number2
  elsif operation == "multiply"
    answer = number1 * number2
  elsif operation == "divide"
    answer = number1 / number2
  else
    answer = "Unable to perform this operation"
  end
  answer.to_s #turn the answer into a string
end



end
