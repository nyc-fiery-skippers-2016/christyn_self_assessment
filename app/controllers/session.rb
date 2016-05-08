get '/login' do
 erb :'/login/new'
end

post '/login' do
  knitter = Knitter.find_by(username:params[:knitter][:username])
  if knitter && knitter.authenticate(params[:knitter][:password])
    session[:knitter_id] = knitter.id
    redirect '/'
  else
    @errors = ["User doesn't exist or you have the wrong username/password"]
    erb :'login/new'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end