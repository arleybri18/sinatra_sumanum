require 'sinatra'

get '/' do
  @num = if params[:sum].nil?
           0
         else
           params[:sum].to_i + 1
         end
  erb :index
end


# another solution is 

# dentro del archivo solution.rb

# require 'sinatra'

# get '/' do
#   @number = params[:number]
#   erb :index
# end
# <!--  Dentro del archivo index.erb -->

# <% if @number %>
#   <h1>Mi cuenta es : <%= @number %></h1>
# <% else %>
#   <h1>Mi cuenta es : 0</h1>
#   <% @number = 0 %>
# <% end %>
# <form action="/">
#   <input type="hidden" value="<%= @number.to_i + 1 %>" name="number">
#   <input type="submit" value="Suma">
# </form>