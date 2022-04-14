before '/login' do
  redirect '/' unless session[:id]
end

get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

get '/login' do
   @user = User.find(session[:id])  
   erb :login_user
end

get '/logout' do
  session.clear
  redirect '/'
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
  user = User.find_by(email: email)
  if User.authenticate(email, password)== true
     session[:id] = user.id
     redirect "/login"
  else
     p "Wrong email or password"
  end
end


