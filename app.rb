require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    if @name.nil?
      400
    else
      @name.reverse
    end
  end

  get "/square/:number" do
    @number = params[:number]
    if @number.nil?
      400
    else
      (@number.to_i ** 2).to_s
    end
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    Array.new(@number.to_i, @phrase).join("\n")
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    [@w1, @w2, @w3, @w4, @w5].join(' ') + '.'
  end

  get "/:operation/:number1/:number2" do
    op_map = {add:'+', subtract:'-', multiply:'*', divide:'/'}
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @number1.send(op_map[@operation], @number2).to_s
  end
end
