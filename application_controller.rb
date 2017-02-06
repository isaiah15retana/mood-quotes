require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
post '/getquote' do
  user_mood=params[:mood]
  @result=quote(user_mood)
  @quote=@result[0]
  erb :results
end
end