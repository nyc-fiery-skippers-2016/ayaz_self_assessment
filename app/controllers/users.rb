#display all channels for a user---------------
get '/users/:user_id/channels' do 

  @user = User.find(params[:user_id])
  @channels = @user.channels
  # binding.pry
  # @total_cost = total_cost(@channels)
  # if logged_in?
    erb :'channels/user_channels_index'
  # else
    # halt 403
  # end

end
#-----------------------------------------------

#create a new user------------------------------
get '/users/new' do

  erb :'users/new' 

end

post '/users' do
  
  @user = User.new(params[:user]) 

  if @user.save 
    redirect '/login' 
  else
    erb :'users/new' 
  end

end
#---------------------------------------------------


#create a new chennel for a user---------------------
get '/users/:user_id/channels/new' do 

  @user = User.find(params[:user_id])
  erb :'channels/new'

end

post '/users/:user_id/channels' do 

  @user = User.find(params[:user_id])

  @channel = @user.channels.new(params[:channel])

  # binding.pry
  if @channel.save
    redirect "/users/#{@user.id}/channels"
  else
    erb :'channels/new'
  end

end
#-------------------------------------------------------

# users show page----------------------------------------
get '/users/:id' do

  @user = User.find(params[:id]) 

  erb :'users/show' 

end
#----------------------------------------------------------

