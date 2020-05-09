require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
    get '/reversename/:name' do
      params[:name].reverse
    end

    get '/square/:number' do
      num = (params[:number].to_i)**2
      num.to_s
    end

    get '/reversename/:name' do
      params[:name].reverse
    end

    get '/reversename/:name' do
      params[:name].reverse
    end
end
