require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name.reverse!
  end

  get "/square/:number" do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    phrase = ""

    @number.times do
      phrase += "#{@phrase}\n"
    end
    phrase
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @wordone = params[:word1]
    @wordtwo = params[:word2]
    @wordthree = params[:word3]
    @wordfour = params[:word4]
    @wordfive = params[:word5]

    return "#{@wordone} #{@wordtwo} #{@wordthree} #{@wordfour} #{@wordfive}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    return @number1.public_send(@operation, @number2)

  end


end
