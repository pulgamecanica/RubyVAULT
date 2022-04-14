get '/deck/:id' do
  user = User.find(session[:id])
  @deck_id = params[:id] 
  @game_id = Game.create(user_id: user.id, deck_id: @deck_id)
  erb :deck1
end
post '/answers/:game_id' do
  p "*"*100
  p options = params[:deck]
  answers = options.values*", "
  p answer = answers.split(', ')
  answer.each do |x|
  question_id = Answer.find(x).question.id
  option = Answer.find(x)
    if option.correct == true
      correct_answer = 1
    elsif option.correct == false
      correct_answer = 0
    end
  Stat.create(game_id: params[:game_id], question_id: question_id, answer_id: option.id, correct: correct_answer)
  end
  redirect '/login'
end

