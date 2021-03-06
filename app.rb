require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    quote = ''
    @number.times {quote += @phrase}
    "#{quote}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operator = params[:operation]

    if @operator == 'add'
      "#{params[:number1].to_i + params[:number2].to_i}" 
    elsif @operator == 'subtract'
      "#{params[:number1].to_i - params[:number2].to_i}" 
    elsif @operator == 'multiply'
      "#{params[:number1].to_i * params[:number2].to_i}" 
    else
      "#{params[:number1].to_i / params[:number2].to_i}" 
    end
  end
end