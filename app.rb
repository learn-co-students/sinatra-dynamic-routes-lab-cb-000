require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    rname=[]
    l=0
    while l<params[:name].size do
      rname.unshift(params[:name][l])
      l +=1
    end
    "The name backwards is #{rname.join("")}"
  end

  get "/square/:number" do
    "The number squared is #{params[:number].to_i*params[:number].to_i}"
  end

  get "/say/:number/:phrase" do
    c=0
    s=""
    while c<params[:number].to_i do
      s += "#{params[:phrase]}\n"
      c += 1
    end
    "The final string is #{s}"

  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      "#{params[:number1].to_i+params[:number2].to_i}"
    when "subtract"
      "#{params[:number1].to_i-params[:number2].to_i}"
    when "multiply"
      "#{params[:number1].to_i*params[:number2].to_i}"
    when "divide"
      "#{params[:number1].to_i/params[:number2].to_i}"
    else
      "That is not a valid operation"
    end
  end

end
