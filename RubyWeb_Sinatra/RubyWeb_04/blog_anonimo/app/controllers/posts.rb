post '/newpost' do
  title = params[:yourposttitle]
  content = params[:yourpost]
  p "-"*100
  p tag_all = params[:post]
  tags = tag_all.values*""
  p tag = tags.split(', ')
  post1 = Post.create(title: title, content: content)
  tag.each do |x|
    if Tag.exists?(name: x) != true
      relation_tag = Tag.create(name: x)
    else
      relation_tag = Tag.find_by(name: x)
    end
  relation = Relation.create(post_id: post1.id, tag_id: relation_tag.id)
end
  if post1.save
    puts "*"*100
    puts "post saved"
  elsif relation_tag.save
  puts "*"*100
  puts "tag saved"
   elsif relation.save 
  puts "*"*100
  puts "relation saved"
  else
  puts "*"*100
  puts "Error"
end
redirect to '/'
end


get '/search_edit' do
  puts "dentro de edit /search_edit"
  @post = params[:search_edit_post]
if Post.find_by(title: @post) == nil
   puts "that post doesent exist"
redirect to '/'
else
   @the_post = Post.find_by(title: @post)
   erb :posts
end
end


post '/delete' do
  "*"*100
  params[:post_id]
  a = Post.find(params[:post_id])
  a.tags.destroy
  a.destroy
redirect to '/'
end

post '/update' do
  title = params[:title_update]
  content  = params[:content_update]
  tags  = params[:post]
  params[:post_id]
  post = Post.find(params[:post_id])
  post.update(title: title, content: content)
  
  tags_all = tags.values*""
  p tag = tags_all.split(', ')
  tag.each do |x|
    if Tag.exists?(name: x) != true
      relation_tag = Tag.create(name: x)
    else
      relation_tag = Tag.find_by(name: x)
    end
  relation = Relation.create(post_id: post.id, tag_id: relation_tag.id)
end
  if post.save
    puts "*"*100
    puts "post saved"
  elsif relation_tag.save
  puts "*"*100
  puts "tag saved"
   elsif relation.save 
  puts "*"*100
  puts "relation saved"
  else
  puts "*"*100
  puts "Error"
end
redirect to '/'
end




# get '/:user_urls' do
#   url_input = params[:urls]
#   url = Url.find_by(id: url_input) 
#   visitas = url.visits +=1
#   url.save
#   redirect to url.original
# end


# post '/login' do
#   email = params[:email]
#   password = params[:password]
#   user_login = User.find_by(email: email)
#   if User.authenticate(email, password)== true
#      session[:id] = user_login.id
#      redirect "/login"
#   elsif User.authenticate(email, password)== false
#      "Wrong email or password"
#   redirect "/"
#   end
# end
# ###********************************************###


# post '/urls' do
#   # crea una nueva Url
#   url = params[:user_input]
#   new_URL = Url.create(original: url, visits: 0)
#   if new_URL.save
#     p session[:message] = "Saved"
#     else
#     p "Error"
#   end
#   redirect to '/'
# end

# post '/user_urls' do
#   # crea una nueva Url
#   user_url = params[:user_input]
#   new_URL = Url.create(user_id: session[:id], original: user_url, visits: 0)
#   if new_URL.save
#     p session[:message] = "Saved"
#     else
#     p "Error"
#   end
#   redirect to '/login'
# end