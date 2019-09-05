require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "The square is #{params[:number].to_i * params[:number].to_i}"
  end

  get "/say/:number/:phrase" do
    params[:phrase] * params[:number].to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      "The sum is #{params[:number1].to_i + params[:number2].to_i}"
    when "subtract"
      "The difference is #{params[:number1].to_i - params[:number2].to_i}"
    when "multiply"
      "The product is #{params[:number1].to_i * params[:number2].to_i}"
    when "divide"
      "The quotient is #{params[:number1].to_i / params[:number2].to_i}"
    else
      "Did not recognize operation params[:operation]. Expected add, subtract, multiply, or '"
    end

  end

end
