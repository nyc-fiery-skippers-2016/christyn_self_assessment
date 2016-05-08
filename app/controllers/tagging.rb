# require 'pry'

# get '/taggings/new/projects/:id' do
#   @project = Project.find_by(id: params[:id])
#   @tags = Tag.all
#   erb :'taggings/new'
# end

# post '/taggings/new/projects/:id' do
#   @knitter = current_user
#   @project = Project.find_by(id: params[:id])
#   tag = params[:id]
#   binding.pry
#   @tagging = Tagging.create(project_id: @project.id, tag_id: tag.id)
#   redirect "/knitters/#{knitter.id}"
# end