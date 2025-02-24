require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end


  get '/square/:number' do
    @num = params[:number].to_i
    (@num * @num).to_s
  end


  get '/say/:number/:phrase' do
    new_string = ""
    params[:number].to_i.times do
      new_string << params[:phrase].to_s + " "
    end
    new_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @result = 0
    @num1 = params[:number1]
    @num2 = params[:number2]
    @operation = params[:operation].to_s
      if @operation == 'add'
        @result = @num1.to_i + @num2.to_i
      elsif @operation == 'multiply'
        @result = @num1.to_i * @num2.to_i
      elsif @operation == 'divide'
        @result = @num1.to_i / @num2.to_i
      elsif @operation == 'subtract'
        @result = @num1.to_i - @num2.to_i
      end
      @result.to_s
  end

end
