get '/knitters/new' do
  erb :'/knitters/new'
end

post '/knitters' do
  # Nice job using new and error checking
  knitter = Knitter.new(params[:knitter])
  if knitter.save
    session[:knitter_id] = knitter.id
    redirect "/knitters/#{knitter.id}"
  else
    @errors = knitter.errors.full_messages
    erb :'/knitter/new'
  end
end

get '/knitters/:id' do
  @knitter = Knitter.find_by(id: params[:id])
  erb :'/knitters/show'
end
