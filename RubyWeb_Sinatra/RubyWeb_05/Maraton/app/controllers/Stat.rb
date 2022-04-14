get '/stats/:id' do
  user_id = params[:id] 
  @user_games = User.find(user_id).games
  erb :stat
end

