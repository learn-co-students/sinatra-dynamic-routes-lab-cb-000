require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = params[:name]
    @reversename = @reversename.reverse
    "#{@reversename}"

  end

  get "/square/:number" do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get "/say/:number/:phrase" do
   @number = params[:number].to_i
   @phrase =  params[:phrase]
   @phrase1 = @phrase*@number
   "#{@phrase1}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @phrase = @word1+" "+ @word2 +" "+ @word3 +" "+ @word4 +" "+ @word5 + "."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operation=="add"
      @solution =  @number1 + @number2
    elsif @operation=="subtract"
      @solution = @number2 - @number1
    elsif @operation=="divide"
        @solution = @number1/@number2
    elsif @operation=="multiply"
      @solution = @number1 * @number2
    end

    "#{@solution}"


  end


end
