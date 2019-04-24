require 'sinatra'

get '/' do
  @num = if params[:sum].nil?
           0
         else
           params[:sum].to_i + 1
         end
  erb :index
end
