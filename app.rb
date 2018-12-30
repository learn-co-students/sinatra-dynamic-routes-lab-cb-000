require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/multiply/:num1/:num2" do
    @product = params[:num1].to_i * params[:num2].to_i
    "#{@product}"
  end

end
