require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    resp = Rack::Response.new
    resp.status = 200
    @number = params[:number]
    @square = @number.to_i * @number.to_i
    @square.to_s
  end

  get '/say/:number/:phrase' do
    resp = Rack::Response.new
    resp.status = 200
    @num = params[:number]
    @phrase = params[:phrase]
    @number = @num.to_i
    "#{@phrase}" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    resp = Rack::Response.new
    resp.status = 200
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    resp = Rack::Response.new
    resp.status = 200
    @op = params[:operation].to_s
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @op == "add"
      @sum = @num1+@num2
      @sum.to_s
    elsif @op == "subtract"
      @sub = @num1-@num2
      @sub.to_s
    elsif @op == "multiply"
      @x = @num1*@num2
      @x.to_s
    else
      @divide = @num1/@num2
      @divide.to_s
    end
  end
end
