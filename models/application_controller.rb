class ApplicationController < Sinatra::Base

  configure do
    set :views, "views"
    set :public_dir, "public"
  end

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i }"
  end


  get '/say/:number/:phrase' do
    output_arr = []
    params[:number].to_i.times do
      output_arr << params[:phrase]
    end
    output_arr.join("\n")
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    sentence_arr = [] 
    params.each {|key, value| sentence_arr << value}
    sentence_arr.join(" ") << "." 
  end

  get '/:operation/:number1/:number2' do

    op_hash = {"add" => "+", "subtract" => "-", "multiply" => "*", "divide" => "/"}
    params[:number1].to_i.send(op_hash[params[:operation]], params[:number2].to_i).to_s
    
  end



  
end
