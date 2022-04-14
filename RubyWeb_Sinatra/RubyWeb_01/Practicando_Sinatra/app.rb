  require 'sinatra'
  require "sinatra/activerecord"
  require './models/user.rb'
  get '/' do
    erb :index
  end
  set :database, {adapter: "sqlite3", database: "db/users.sqlite3", pool: 30}
  post '/users' do
   # Capturamos los valores del formulario con 'params'
    name  = params[:name]
    email = params[:email]
    # Creamos una instancia de la clase User con sus atributos necesarios
    user  = User.new(name: name, email: email)
    # Si el usuario se guardó en la DB, redirige a su perfil, de otra forma
    # vuelve a mostrar el formulario.
    if user.save
      redirect to("/users/#{user.id}")
    else
      erb :index
    end 
  end

    get '/users/:id' do
    @user = User.find(params[:id])
    erb :profile
  end
  
  get '/users' do
    @users = User.all
    erb :users
  end