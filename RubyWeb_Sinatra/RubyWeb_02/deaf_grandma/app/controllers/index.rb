get '/' do
  @abuelita = params[:abuelita]
  erb :index
  # Visita app/views/index.erb
end


post '/abuelita' do
  user_input = params[:user_input]
  if user_input.upcase == user_input && user_input != "BYE"
    redirect to ("/?abuelita=NO, NO DESDE 1983")
       elsif user_input.downcase == user_input
        redirect to ("/?abuelita=HUH?! NO TE ESCUCHO, HIJO!") 
       elsif user_input == "BYE"
        redirect to ("/?abuelita=BYE TQM")
  end
 end
