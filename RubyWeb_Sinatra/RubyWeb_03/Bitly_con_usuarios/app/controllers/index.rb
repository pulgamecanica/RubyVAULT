before '/login' do
 #redirect '/' unless session[:id]
end

get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  @urls_total = Url.all.order('visits DESC')
  erb :index
end

get '/login' do
  @user = User.find(session[:id])
  @urls_total_user = @user.urls.order('visits DESC')
   erb :login_user
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/:urls' do
  url_input = params[:urls]
  url = Url.find_by(id: url_input) 
  visitas = url.visits +=1
  url.save
  redirect to url.original
end

get '/:user_urls' do
  url_input = params[:urls]
  url = Url.find_by(id: url_input) 
  visitas = url.visits +=1
  url.save
  redirect to url.original
end

post '/users' do
  user_name = params[:user_name]
  user_email = params[:user_email]
  user_password = params[:user_password]
  new_user = User.create(name: user_name, email: user_email, password: user_password)
  if new_user.save
     p session[:message] = "Saved"
     else
     p "Error"
   end
   redirect to '/'
end

post '/login' do
  email = params[:email]
  password = params[:password]
  user_login = User.find_by(email: email)
  if User.authenticate(email, password)== true
     session[:id] = user_login.id
     redirect "/login"
  elsif User.authenticate(email, password)== false
     "Wrong email or password"
  redirect "/"
  end
end
###********************************************###


post '/urls' do
  # crea una nueva Url
  url = params[:user_input]
  new_URL = Url.create(original: url, visits: 0)
  if new_URL.save
    p session[:message] = "Saved"
    else
    p "Error"
  end
  redirect to '/'
end

post '/user_urls' do
  # crea una nueva Url
  user_url = params[:user_input]
  new_URL = Url.create(user_id: session[:id], original: user_url, visits: 0)
  if new_URL.save
    p session[:message] = "Saved"
    else
    p "Error"
  end
  redirect to '/login'
end


