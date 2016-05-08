get '/channels' do

  @channels = Channel.all 

  erb :'channels/index' 

end

get '/channels/new' do

  erb :'channels/new' #

end

post '/channels' do

  
  @channel = Channel.new(params[:channel]) 

  if @channel.save
    redirect '/channels' 
  else
    erb :'channels/new' 
  end

end

get '/channels/:id' do

  

  @channel = Channel.find(params[:id]) 

  erb :'channels/show' 

end
