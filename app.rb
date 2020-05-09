require_relative 'config/environment'

class App < Sinatra::Base

    get '/reversename/:name' do
      @name = params[:name].reverse
    end

    get '/square/:number' do
      @num = (params[:number].to_i)**2
      @num.to_s
    end

    get '/say/:number/:phrase' do
      @num = params[:number].to_i
      @phrase = params[:phrase]
      space = ""
      @num.times do
        space += @phrase
      end
      space
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]

      @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
    end

    get '/:operation/:number1/:number2' do
      @operation = params[:operation] #add, subtract, multiply, divide
      @number1 = params[:number1].to_i
      @number2 = params[:number2].to_i

      case @operation

      when 'add'
        result = @number1 + @number2
        result.to_s
      when 'subtract'
        result = @number1 - @number2
        result.to_s
      when 'multiply'
        result = @number1 * @number2
        result.to_s
      when 'divide'
        result = @number1 / @number2
        result.to_s
      end
    end

end
