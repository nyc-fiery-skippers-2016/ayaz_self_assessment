get '/login' do
	erb :'/sessions/login'
end

get '/login/new' do
	redirect '/users/new'
end

post '/login' do
	user = User.find_by(email: params[:user][:email])
	if user && user.authenticate(params[:user][:password])
		session[:user_id] = user.id
		redirect :"/"
	else
		@errors = ["Wrong username and/or password"]
		erb :'/sessions/login'
	end
end

get '/logout' do
	session.clear
	redirect :'/login'
end
