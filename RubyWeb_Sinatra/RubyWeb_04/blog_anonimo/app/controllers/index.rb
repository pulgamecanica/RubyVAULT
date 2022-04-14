get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @tags_total = Tag.all
  @posts_total = Post.all
  erb :index
end

