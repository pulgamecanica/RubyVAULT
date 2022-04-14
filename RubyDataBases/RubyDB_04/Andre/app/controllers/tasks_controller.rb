require 'pp'
class UsersController
  def initialize
    @view = UsersView.new
    option = @view.menu
    options(option)
  end

  def options(option)
    case option
    when 1  
      login(@view.login)
    when 2
      signup(@view.signup)
    when 3 
      scores(@view.scores)
    else
      puts "Nothing to do here"
      exit
    end
  end
  def login(user_information)
  game_number = Game.all.length
    find_user = User.find_by_email(user_information[0])
    if find_user != nil
      if find_user.password == user_information[1] 
        option = @view.deck_menu
        @new_game = Game.create(user_id: find_user.id, deck_id: option)
        puts "You have created a new Game. This is the game number #{game_number}"
        deck_options(option)
      else
        puts "Wrong password"
        options(@view.menu)
      end
    else 
      puts "That user doesen`t exist"
      options(@view.menu)
    end
  end  
  # alex_stat = Stat.create(game_id: game1.id, question_id: question1_3.id, answer_id: answer3_1_3.id, correct: 0)

  def deck_options(deck_option)
    case deck_option
    when 1 
      result = []
      counter = 0
      answer1 = Question.find(1).answers[0]
      answer2 = Question.find(1).answers[1]
      answer3 = Question.find(1).answers[2]
      puts  Deck.find(1).questions[0].question
      puts "a) #{answer1.name}"
      puts "b) #{answer2.name}"
      puts "c) #{answer3.name}"
      answer1_user = gets.chomp
      if answer1_user == "a"
        answer1_user = answer1
      elsif answer1_user == "b"
        answer1_user = answer2
      elsif answer1_user == "c"
        answer1_user = answer3
      end
      a = Stat.create(game_id: @new_game.id, question_id: Deck.find(1).questions[0].id, answer_id: answer1_user.id, correct: answer1_user.correct)
      result << a.correct
      #
      #
      answer4 = Question.find(2).answers[0]
      answer5 = Question.find(2).answers[1]
      answer6 = Question.find(2).answers[2]
      puts  Deck.find(1).questions[1].question
      puts "a) #{answer4.name}"
      puts "b) #{answer5.name}"
      puts "c) #{answer6.name}"
      answer2_user = gets.chomp
      if answer2_user == "a"
        answer2_user = answer4
      elsif answer2_user == "b"
        answer2_user = answer5
      elsif answer2_user == "c"
        answer2_user = answer6
      end
      b = Stat.create(game_id: @new_game.id, question_id: Deck.find(1).questions[1].id, answer_id: answer2_user.id, correct: answer2_user.correct)
      result << b.correct
      #
      #
      answer7 = Question.find(3).answers[0]
      answer8 = Question.find(3).answers[1]
      answer9 = Question.find(3).answers[2]

      puts  Deck.find(1).questions[2].question
      puts "a) #{answer7.name}"
      puts "b) #{answer8.name}"
      puts "c) #{answer9.name}"
      answer3_user = gets.chomp  
      if answer3_user == "a"
        answer3_user = answer7
      elsif answer3_user == "b"
        answer3_user = answer8
      elsif answer3_user == "c"
        answer3_user = answer9
      end
      c = Stat.create(game_id: @new_game.id, question_id: Deck.find(1).questions[2].id, answer_id: answer3_user.id, correct: answer3_user.correct)
      result << c.correct
      #
      #
      answer10 = Question.find(4).answers[0]
      answer11 = Question.find(4).answers[1]
      answer12 = Question.find(4).answers[2]
      puts  Deck.find(1).questions[3].question
      puts "a) #{answer10.name}"
      puts "b) #{answer11.name}"
      puts "c) #{answer12.name}"
      answer4_user = gets.chomp
      if answer4_user == "a"
        answer4_user = answer10
      elsif answer4_user == "b"
        answer4_user = answer11
      elsif answer4_user == "c"
        answer4_user = answer12
      end
      d = Stat.create(game_id: @new_game.id, question_id: Deck.find(1).questions[3].id, answer_id: answer4_user.id, correct: answer4_user.correct)
      result << d.correct
      #
      #
      answer13 = Question.find(5).answers[0]
      answer14 = Question.find(5).answers[1]
      answer15 = Question.find(5).answers[2]
      puts  Deck.find(1).questions[4].question
      puts "a) #{answer13.name}"
      puts "b) #{answer14.name}"
      puts "c) #{answer15.name}"
      answer5_user = gets.chomp
      if answer5_user == "a"
        answer5_user = answer13
      elsif answer5_user == "b"
        answer5_user = answer14
      elsif answer5_user == "c"
        answer5_user = answer15
      end
      e = Stat.create(game_id: @new_game.id, question_id: Deck.find(1).questions[4].id, answer_id: answer5_user.id, correct: answer5_user.correct)
      result << e.correct
      #
      #
      answer16 = Question.find(6).answers[0]
      answer17 = Question.find(6).answers[1]
      answer18 = Question.find(6).answers[2]
      puts  Deck.find(1).questions[5].question
      puts "a) #{answer16.name}"
      puts "b) #{answer17.name}"
      puts "c) #{answer18.name}"
      answer6_user = gets.chomp
      if answer6_user == "a"
        answer6_user = answer16
      elsif answer6_user == "b"
        answer6_user = answer17
      elsif answer6_user == "c"
        answer6_user = answer18
      end
      f = Stat.create(game_id: @new_game.id, question_id: Deck.find(1).questions[5].id, answer_id: answer6_user.id, correct: answer6_user.correct)
      result << f.correct
      #
      #
      answer19 = Question.find(7).answers[0]
      answer20 = Question.find(7).answers[1]
      answer21 = Question.find(7).answers[2]
      puts  Deck.find(1).questions[6].question
      puts "a) #{answer19.name}"
      puts "b) #{answer20.name}"
      puts "c) #{answer21.name}"
      answer7_user = gets.chomp
      if answer7_user == "a"
        answer7_user = answer19
      elsif answer7_user == "b"
        answer7_user = answer20
      elsif answer7_user == "c"
        answer7_user = answer21
      end
      g = Stat.create(game_id: @new_game.id, question_id: Deck.find(1).questions[6].id, answer_id: answer7_user.id, correct: answer7_user.correct)
      result << g.correct
      #
      #
      answer22 = Question.find(8).answers[0]
      answer23 = Question.find(8).answers[1]
      answer24 = Question.find(8).answers[2]
      puts  Deck.find(1).questions[7].question
      puts "a) #{answer22.name}"
      puts "b) #{answer23.name}"
      puts "c) #{answer24.name}"
      answer8_user = gets.chomp
      if answer8_user == "a"
        answer8_user = answer22
      elsif answer8_user == "b"
        answer8_user = answer23
      elsif answer8_user == "c"
        answer8_user = answer24
      end
      h = Stat.create(game_id: @new_game.id, question_id: Deck.find(1).questions[7].id, answer_id: answer8_user.id, correct: answer8_user.correct)
      result << h.correct
       #
       #
      answer25 = Question.find(9).answers[0]
      answer26 = Question.find(9).answers[1]
      answer27 = Question.find(9).answers[2]
      puts  Deck.find(1).questions[8].question
      puts "a) #{answer25.name}"
      puts "b) #{answer26.name}"
      puts "c) #{answer27.name}"
      answer9_user = gets.chomp
      if answer9_user == "a"
        answer9_user = answer25
      elsif answer9_user == "b"
        answer9_user = answer26
      elsif answer9_user == "c"
        answer9_user = answer27
      end
      i = Stat.create(game_id: @new_game.id, question_id: Deck.find(1).questions[8].id, answer_id: answer9_user.id, correct: answer9_user.correct)
      result << i.correct
      #
      #
      answer28 = Question.find(10).answers[0]
      answer29 = Question.find(10).answers[1]
      answer30 = Question.find(10).answers[2]
      puts  Deck.find(1).questions[9].question
      puts "a) #{answer28.name}"
      puts "b) #{answer29.name}"
      puts "c) #{answer30.name}"
      answer10_user = gets.chomp
      if answer10_user == "a"
        answer10_user = answer28
      elsif answer10_user == "b"
        answer10_user = answer29
      elsif answer10_user == "c"
        answer10_user = answer30
      end
      j = Stat.create(game_id: @new_game.id, question_id: Deck.find(1).questions[9].id, answer_id: answer10_user.id, correct: answer10_user.correct)
      result << j.correct
      pp Stat.where(game_id: @new_game.id)
      result.each do |answers_do|
        if answers_do == 1
          counter += 1
        end
      end
      puts "----------------------------^^^^^^^^^^^^^^^^^^^^^^-----------------------------"
      puts "Yor result was: #{counter} correct answers and #{10-counter} incorrect answers"
      puts "----------------------------^^^^^^^^^^^^^^^^^^^^^^-----------------------------"
      options(@view.menu)
    when 2  
      result_2 = []
      counter_2 = 0
      answer1_1 = Question.find(11).answers[0]
      answer2_1 = Question.find(11).answers[1]
      answer3_1 = Question.find(11).answers[2]
      puts  Deck.find(2).questions[0].question
      puts "a) #{answer1_1.name}"
      puts "b) #{answer2_1.name}"
      puts "c) #{answer3_1.name}"
      answer1_1user = gets.chomp
      if answer1_1user == "a"
        answer1_1user = answer1_1
      elsif answer1_1user == "b"
        answer1_1user = answer2_1
      elsif answer1_1user == "c"
        answer1_1user = answer3_1
      end
      k = Stat.create(game_id: @new_game.id, question_id: Deck.find(2).questions[0].id, answer_id: answer1_1user.id, correct: answer1_1user.correct)
      result_2 << k.correct
      #
      #
      answer4_1 = Question.find(12).answers[0]
      answer5_1 = Question.find(12).answers[1]
      answer6_1 = Question.find(12).answers[2]
      puts  Deck.find(2).questions[1].question
      puts "a) #{answer4_1.name}"
      puts "b) #{answer5_1.name}"
      puts "c) #{answer6_1.name}"
      answer2_1user = gets.chomp
      if answer2_1user == "a"
        answer2_1user = answer4_1
      elsif answer2_1user == "b"
        answer2_1user = answer5_1
      elsif answer2_1user == "c"
        answer2_1user = answer6_1
      end
      m = Stat.create(game_id: @new_game.id, question_id: Deck.find(2).questions[1].id, answer_id: answer2_1user.id, correct: answer2_1user.correct)
      result_2 << m.correct
      #
      #
      answer7_1 = Question.find(13).answers[0]
      answer8_1 = Question.find(13).answers[1]
      answer9_1 = Question.find(13).answers[2]

      puts  Deck.find(2).questions[2].question
      puts "a) #{answer7_1.name}"
      puts "b) #{answer8_1.name}"
      puts "c) #{answer9_1.name}"
      answer3_1user = gets.chomp  
      if answer3_1user == "a"
        answer3_1user = answer7_1
      elsif answer3_1user == "b"
        answer3_1user = answer8_1
      elsif answer3_1user == "c"
        answer3_1user = answer9_1
      end
      n = Stat.create(game_id: @new_game.id, question_id: Deck.find(2).questions[2].id, answer_id: answer3_1user.id, correct: answer3_1user.correct)
      result_2 << n.correct
      #
      #
      answer10_1 = Question.find(14).answers[0]
      answer11_1 = Question.find(14).answers[1]
      answer12_1 = Question.find(14).answers[2]
      puts  Deck.find(2).questions[3].question
      puts "a) #{answer10_1.name}"
      puts "b) #{answer11_1.name}"
      puts "c) #{answer12_1.name}"
      answer4_1user = gets.chomp
      if answer4_1user == "a"
        answer4_1user = answer10_1
      elsif answer4_1user == "b"
        answer4_1user = answer11_1
      elsif answer4_1user == "c"
        answer4_1user = answer12_1
      end
      l = Stat.create(game_id: @new_game.id, question_id: Deck.find(2).questions[3].id, answer_id: answer4_1user.id, correct: answer4_1user.correct)
      result_2 << l.correct
      #
      #
      answer13_1 = Question.find(15).answers[0]
      answer14_1 = Question.find(15).answers[1]
      answer15_1 = Question.find(15).answers[2]
      puts  Deck.find(2).questions[4].question
      puts "a) #{answer13_1.name}"
      puts "b) #{answer14_1.name}"
      puts "c) #{answer15_1.name}"
      answer5_1user = gets.chomp
      if answer5_1user == "a"
        answer5_1user = answer13_1
      elsif answer5_1user == "b"
        answer5_1user = answer14_1
      elsif answer5_1user == "c"
        answer5_1user = answer15_1
      end
      o = Stat.create(game_id: @new_game.id, question_id: Deck.find(2).questions[4].id, answer_id: answer5_1user.id, correct: answer5_1user.correct)
      result_2 << o.correct
      #
      #
      answer16_1 = Question.find(16).answers[0]
      answer17_1 = Question.find(16).answers[1]
      answer18_1 = Question.find(16).answers[2]
      puts  Deck.find(2).questions[5].question
      puts "a) #{answer16_1.name}"
      puts "b) #{answer17_1.name}"
      puts "c) #{answer18_1.name}"
      answer6_1user = gets.chomp
      if answer6_1user == "a"
        answer6_1user = answer16_1
      elsif answer6_1user == "b"
        answer6_1user = answer17_1
      elsif answer6_1user == "c"
        answer6_1user = answer18_1
      end
      p = Stat.create(game_id: @new_game.id, question_id: Deck.find(2).questions[5].id, answer_id: answer6_1user.id, correct: answer6_1user.correct)
      result_2 << p.correct
      #
      #
      answer19_1 = Question.find(17).answers[0]
      answer20_1 = Question.find(17).answers[1]
      answer21_1 = Question.find(17).answers[2]
      puts  Deck.find(2).questions[6].question
      puts "a) #{answer19_1.name}"
      puts "b) #{answer20_1.name}"
      puts "c) #{answer21_1.name}"
      answer7_1user = gets.chomp
      if answer7_1user == "a"
        answer7_1user = answer19_1
      elsif answer7_1user == "b"
        answer7_1user = answer20_1
      elsif answer7_1user == "c"
        answer7_1user = answer21_1
      end
      q = Stat.create(game_id: @new_game.id, question_id: Deck.find(2).questions[6].id, answer_id: answer7_1user.id, correct: answer7_1user.correct)
      result_2 << q.correct
      #
      #
      answer22_1 = Question.find(18).answers[0]
      answer23_1 = Question.find(18).answers[1]
      answer24_1 = Question.find(18).answers[2]
      puts  Deck.find(2).questions[7].question
      puts "a) #{answer22_1.name}"
      puts "b) #{answer23_1.name}"
      puts "c) #{answer24_1.name}"
      answer8_1user = gets.chomp
      if answer8_1user == "a"
        answer8_1user = answer22_1
      elsif answer8_1user == "b"
        answer8_1user = answer23_1
      elsif answer8_1user == "c"
        answer8_1user = answer24_1
      end
      r = Stat.create(game_id: @new_game.id, question_id: Deck.find(2).questions[7].id, answer_id: answer8_1user.id, correct: answer8_1user.correct)
      result_2 << r.correct
       #
       #
      answer25_1 = Question.find(19).answers[0]
      answer26_1 = Question.find(19).answers[1]
      answer27_1 = Question.find(19).answers[2]
      puts  Deck.find(2).questions[8].question
      puts "a) #{answer25_1.name}"
      puts "b) #{answer26_1.name}"
      puts "c) #{answer27_1.name}"
      answer9_1user = gets.chomp
      if answer9_1user == "a"
        answer9_1user = answer25_1
      elsif answer9_1user == "b"
        answer9_1user = answer26_1
      elsif answer9_1user == "c"
        answer9_1user = answer27_1
      end
      s = Stat.create(game_id: @new_game.id, question_id: Deck.find(2).questions[8].id, answer_id: answer9_1user.id, correct: answer9_1user.correct)
      result_2 << s.correct
      #
      #
      answer28_1 = Question.find(20).answers[0]
      answer29_1 = Question.find(20).answers[1]
      answer30_1 = Question.find(20).answers[2]
      puts  Deck.find(2).questions[9].question
      puts "a) #{answer28_1.name}"
      puts "b) #{answer29_1.name}"
      puts "c) #{answer30_1.name}"
      answer10_1user = gets.chomp
      if answer10_1user == "a"
        answer10_1user = answer28_1
      elsif answer10_1user == "b"
        answer10_1user = answer29_1
      elsif answer10_1user == "c"
        answer10_1user = answer30_1
      end
      y = Stat.create(game_id: @new_game.id, question_id: Deck.find(2).questions[9].id, answer_id: answer10_1user.id, correct: answer10_1user.correct)
      result_2 << y.correct
      result_2
      result_2.each do |answers_do|
        if answers_do == 1
          counter_2 += 1
        end
      end
      pp Stat.where(game_id: @new_game.id)
      puts "----------------------------^^^^^^^^^^^^^^^^^^^^^^-----------------------------"
      puts "Yor result was: #{counter_2} correct answers and #{10-counter_2} incorrect answers"
      puts "----------------------------^^^^^^^^^^^^^^^^^^^^^^-----------------------------"
       options(@view.menu)
    when 3 
      counter_3 = 0
      result_3 = []
      answer1_2 = Question.find(21).answers[0]
      answer2_2 = Question.find(21).answers[1]
      answer3_2 = Question.find(21).answers[2]
      puts  Deck.find(3).questions[0].question
      puts "a) #{answer1_2.name}"
      puts "b) #{answer2_2.name}"
      puts "c) #{answer3_2.name}"
      answer1_2user = gets.chomp
      if answer1_2user == "a"
        answer1_2user = answer1_2
      elsif answer1_2user == "b"
        answer1_2user = answer2_2
      elsif answer1_2user == "c"
        answer1_2user = answer3_2
      end
      a_1 = Stat.create(game_id: @new_game.id, question_id: Deck.find(3).questions[0].id, answer_id: answer1_2user.id, correct: answer1_2user.correct)
      result_3 << a_1.correct
      #
      #
      answer4_2 = Question.find(22).answers[0]
      answer5_2 = Question.find(22).answers[1]
      answer6_2 = Question.find(22).answers[2]
      puts  Deck.find(3).questions[1].question
      puts "a) #{answer4_2.name}"
      puts "b) #{answer5_2.name}"
      puts "c) #{answer6_2.name}"
      answer2_2user = gets.chomp
      if answer2_2user == "a"
        answer2_2user = answer4_2
      elsif answer2_2user == "b"
        answer2_2user = answer5_2
      elsif answer2_2user == "c"
        answer2_2user = answer6_2
      end
      b_1 = Stat.create(game_id: @new_game.id, question_id: Deck.find(3).questions[1].id, answer_id: answer2_2user.id, correct: answer2_2user.correct)
      result_3 << b_1.correct
      #
      #
      answer7_2 = Question.find(23).answers[0]
      answer8_2 = Question.find(23).answers[1]
      answer9_2 = Question.find(23).answers[2]

      puts  Deck.find(3).questions[2].question
      puts "a) #{answer7_2.name}"
      puts "b) #{answer8_2.name}"
      puts "c) #{answer9_2.name}"
      answer3_2user = gets.chomp  
      if answer3_2user == "a"
        answer3_2user = answer7_2
      elsif answer3_2user == "b"
        answer3_2user = answer8_2
      elsif answer3_2user == "c"
        answer3_2user = answer9_2
      end
      c_1 = Stat.create(game_id: @new_game.id, question_id: Deck.find(3).questions[2].id, answer_id: answer3_2user.id, correct: answer3_2user.correct)
      result_3 << c_1.correct
      #
      #
      answer10_2 = Question.find(24).answers[0]
      answer11_2 = Question.find(24).answers[1]
      answer12_2 = Question.find(24).answers[2]
      puts  Deck.find(3).questions[3].question
      puts "a) #{answer10_2.name}"
      puts "b) #{answer11_2.name}"
      puts "c) #{answer12_2.name}"
      answer4_2user = gets.chomp
      if answer4_2user == "a"
        answer4_2user = answer10_2
      elsif answer4_2user == "b"
        answer4_2user = answer11_2
      elsif answer4_2user == "c"
        answer4_2user = answer12_2
      end
      d_1 = Stat.create(game_id: @new_game.id, question_id: Deck.find(3).questions[3].id, answer_id: answer4_2user.id, correct: answer4_2user.correct)
      result_3 << d_1.correct
      #
      #
      answer13_2 = Question.find(25).answers[0]
      answer14_2 = Question.find(25).answers[1]
      answer15_2 = Question.find(25).answers[2]
      puts  Deck.find(3).questions[4].question
      puts "a) #{answer13_2.name}"
      puts "b) #{answer14_2.name}"
      puts "c) #{answer15_2.name}"
      answer5_2user = gets.chomp
      if answer5_2user == "a"
        answer5_2user = answer13_2
      elsif answer5_2user == "b"
        answer5_2user = answer14_2
      elsif answer5_2user == "c"
        answer5_2user = answer15_2
      end
      f_1 = Stat.create(game_id: @new_game.id, question_id: Deck.find(3).questions[4].id, answer_id: answer5_2user.id, correct: answer5_2user.correct)
      result_3 << f_1.correct
      #
      #
      answer16_2 = Question.find(26).answers[0]
      answer17_2 = Question.find(26).answers[1]
      answer18_2 = Question.find(26).answers[2]
      puts  Deck.find(3).questions[5].question
      puts "a) #{answer16_2.name}"
      puts "b) #{answer17_2.name}"
      puts "c) #{answer18_2.name}"
      answer6_2user = gets.chomp
      if answer6_2user == "a"
        answer6_2user = answer16_2
      elsif answer6_2user == "b"
        answer6_2user = answer17_2
      elsif answer6_2user == "c"
        answer6_2user = answer18_2
      end
      g_1 = Stat.create(game_id: @new_game.id, question_id: Deck.find(3).questions[5].id, answer_id: answer6_2user.id, correct: answer6_2user.correct)
      result_3 << g_1.correct
      #
      #
      answer19_2 = Question.find(27).answers[0]
      answer20_2 = Question.find(27).answers[1]
      answer21_2 = Question.find(27).answers[2]
      puts  Deck.find(3).questions[6].question
      puts "a) #{answer19_2.name}"
      puts "b) #{answer20_2.name}"
      puts "c) #{answer21_2.name}"
      answer7_2user = gets.chomp
      if answer7_2user == "a"
        answer7_2user = answer19_2
      elsif answer7_2user == "b"
        answer7_2user = answer20_2
      elsif answer7_2user == "c"
        answer7_2user = answer21_2
      end
      h_1 = Stat.create(game_id: @new_game.id, question_id: Deck.find(3).questions[6].id, answer_id: answer7_2user.id, correct: answer7_2user.correct)
      result_3 << h_1.correct
      #
      #
      answer22_2 = Question.find(28).answers[0]
      answer23_2 = Question.find(28).answers[1]
      answer24_2 = Question.find(28).answers[2]
      puts  Deck.find(3).questions[7].question
      puts "a) #{answer22_2.name}"
      puts "b) #{answer23_2.name}"
      puts "c) #{answer24_2.name}"
      answer8_2user = gets.chomp
      if answer8_2user == "a"
        answer8_2user = answer22_2
      elsif answer8_2user == "b"
        answer8_2user = answer23_2
      elsif answer8_2user == "c"
        answer8_2user = answer24_2
      end
      i_1 = Stat.create(game_id: @new_game.id, question_id: Deck.find(3).questions[7].id, answer_id: answer8_2user.id, correct: answer8_2user.correct)
      result_3 << i_1.correct
      #
      #
      answer25_2 = Question.find(29).answers[0]
      answer26_2 = Question.find(29).answers[1]
      answer27_2 = Question.find(29).answers[2]
      puts  Deck.find(3).questions[8].question
      puts "a) #{answer25_2.name}"
      puts "b) #{answer26_2.name}"
      puts "c) #{answer27_2.name}"
      answer9_2user = gets.chomp
      if answer9_2user == "a"
        answer9_2user = answer25_2
      elsif answer9_2user == "b"
        answer9_2user = answer26_2
      elsif answer9_2user == "c"
        answer9_2user = answer27_2
      end
      j_1 = Stat.create(game_id: @new_game.id, question_id: Deck.find(3).questions[8].id, answer_id: answer9_2user.id, correct: answer9_2user.correct)
      result_3 << j_1.correct
      #
      #
      answer28_2 = Question.find(30).answers[0]
      answer29_2 = Question.find(30).answers[1]
      answer30_2 = Question.find(30).answers[2]
      puts  Deck.find(3).questions[9].question
      puts "a) #{answer28_2.name}"
      puts "b) #{answer29_2.name}"
      puts "c) #{answer30_2.name}"
      answer10_2user = gets.chomp
      if answer10_2user == "a"
        answer10_2user = answer28_2
      elsif answer10_2user == "b"
        answer10_2user = answer29_2
      elsif answer10_2user == "c"
        answer10_2user = answer30_2
      end
      k_1 = Stat.create(game_id: @new_game.id, question_id: Deck.find(3).questions[9].id, answer_id: answer10_2user.id, correct: answer10_2user.correct)
      result_3 << k_1.correct
      pp Stat.where(game_id: @new_game.id)
      result_3
      result_3.each do |answers_do|
        if answers_do == 1
          counter_3 += 1
        end
      end
      puts "----------------------------^^^^^^^^^^^^^^^^^^^^^^-----------------------------"
      puts "Yor result was: #{counter_3} correct answers and #{10-counter_3} incorrect answers"
      puts "----------------------------^^^^^^^^^^^^^^^^^^^^^^-----------------------------"
     options(@view.menu)
  end
end

  def signup(new_user)
    User.create(user_name: new_user[0], password: new_user[1], email: new_user[2], name: new_user[3])
    options(@view.menu)
  end

  def scores(game_played)
  pp Stat.where(game_id: game_played).all
  options(@view.menu)
end
end