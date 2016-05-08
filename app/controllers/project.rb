
get '/projects' do
  @projects = Project.order(created_at: :desc)
  erb :'projects/index'
end

get '/projects/new' do
  @knitter = current_user
  @tags = Tag.all
  erb :'projects/new'
end

post '/projects/new' do
  @knitter = current_user
  pattern_name = params[:pattern_name]
  yarn = params[:yarn]
  total_yardage = params[:total_yardage]
  notes = params[:notes]
  tag = params[:tag]
  project = Project.create(pattern_name: pattern_name, yarn: yarn, total_yardage: total_yardage, notes: notes, knitter_id: @knitter.id)
  project.tags << Tag.find_or_create_by(name: tag)
  redirect ("knitters/#{@knitter.id}")
end

get '/projects/:id/edit' do
  @project = Project.find(params[:id])
  erb :'projects/edit'
end

post '/projects/:id' do
  @knitter = current_user
  @project = Project.find(params[:id])
  @project.update_attributes(params[:project])
  redirect "/knitters/#{@knitter.id}"
end

delete '/projects/:id' do
  @knitter = current_user
  @project = Project.find_by(id: params[:id])
  @project.destroy
  redirect ("knitters/#{@knitter.id}")
end