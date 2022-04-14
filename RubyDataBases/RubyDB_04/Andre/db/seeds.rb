#USERS
alex = User.create(user_name: "AleSUP43", password: "intothewild", email: "alex43_sup@hotmail.com", name: "Alejandro Supertramp")
julia = User.create(user_name: "Ponypony", password: "creapylesbian", email: "julia55@gmail.com", name: "Julieta Escobar")
andre = User.create(user_name: "EL_PRO`", password: "el chido", email: "gmail@andre.com", name: "God")


#DECKS
deck1 = Deck.create(name: "Science")
deck2 = Deck.create(name: "Math")
deck3 = Deck.create(name: "History")
#GAMES
game1 = Game.create(user_id: alex.id, deck_id: deck1.id)
#game2 = Game.create(user_id: julia.id, deck_id: deck2.id)
# Game.create(user_id: 1, deck_id: 1)
#Questions DECK1
#question1 from deck 1
question1_1 = Question.create(deck_id: deck1.id, question: 'Brass gets discoloured in air because of the presence of which of the following gases in air?')#Answer = hydrogen sulphd
#question2 from deck 1
question2_1 = Question.create(deck_id: deck1.id, question: 'Chlorophyll is a naturally occurring chelate compound in which central metal is')#Answer = magnesium
#question3 from deck 1
question3_1 = Question.create(deck_id: deck1.id, question: 'Which of the following is used in pencils?')#Answer = graphite
#question4 from deck 1
question4_1 = Question.create(deck_id: deck1.id, question: 'The hardest substance available on earth is')#Answer = diamond
#question5 from deck 1
question5_1 = Question.create(deck_id: deck1.id, question: 'The gases used in different types of welding would include')#Answer = oxygen and acetylene
#question6 from deck 1
question6_1 = Question.create(deck_id: deck1.id, question: 'The average salinity of sea water is')#Answer = 3.5%
#question7 from deck 1
question7_1 = Question.create(deck_id: deck1.id, question: 'The element common to all acids is')#Answer = hydrogen
#question8 from deck 1
question8_1 = Question.create(deck_id: deck1.id, question: 'Carbon, diamond and graphite are together called')#Answer = allotropes
#question9 from deck 1
question9_1 = Question.create(deck_id: deck1.id, question: 'Which of the following is in liquid form at room temperature?')#Answer = Francium
#question10 from deck 1
question10_1 = Question.create(deck_id: deck1.id, question: 'In fireworks, the green flame is produced because of')#Answer = barium

#DECK1
#question1 from deck 1 options 1,2 and 3.
answer1_1_1 = Answer.create(question_id: question1_1.id, name: 'Helium', correct:false)
answer2_1_1 = Answer.create(question_id: question1_1.id, name: 'Oxigen', correct:false)
answer3_1_1 = Answer.create(question_id: question1_1.id, name: 'Hydrogen sulphd', correct:true)
#question2 from deck 1 options 1,2 and 3.
answer1_2_1 = Answer.create(question_id: question2_1.id, name: 'Gold', correct:false)
answer2_2_1 = Answer.create(question_id: question2_1.id, name: 'Magnesium', correct:true)
answer3_2_1 = Answer.create(question_id: question2_1.id, name: 'Zulfure', correct:false)
#question3 from deck 1 options 1,2 and 3.
answer1_3_1 = Answer.create(question_id: question3_1.id, name: 'Graphite', correct:true)
answer2_3_1 = Answer.create(question_id: question3_1.id, name: 'Graphicsium', correct:false)
answer3_3_1 = Answer.create(question_id: question3_1.id, name: 'Wood', correct:false)
#question4 from deck 1 options 1,2 and 3.
answer1_4_1 = Answer.create(question_id: question4_1.id, name: 'Gold', correct:false)
answer2_4_1 = Answer.create(question_id: question4_1.id, name: 'Dimond', correct:true)
answer3_4_1 = Answer.create(question_id: question4_1.id, name: 'Platinum', correct:false)
#question5 from deck 1 options 1,2 and 3.
answer1_5_1 = Answer.create(question_id: question5_1.id, name: 'Oxygen and acetylene', correct:true)
answer2_5_1 = Answer.create(question_id: question5_1.id, name: 'Oxygen and hydrogen', correct:false)
answer3_5_1 = Answer.create(question_id: question5_1.id, name: 'Oxygen, acetylene and argon', correct:false)
#question6 from deck 1 options 1,2 and 3.
answer1_6_1 = Answer.create(question_id: question6_1.id, name: '2%', correct:false)
answer2_6_1 = Answer.create(question_id: question6_1.id, name: '2.5%', correct:false)
answer3_6_1 = Answer.create(question_id: question6_1.id, name: '3.5%', correct:true)
#question7 from deck 1 options 1,2 and 3.
answer1_7_1 = Answer.create(question_id: question7_1.id, name: 'Hydrogen', correct:true)
answer2_7_1 = Answer.create(question_id: question7_1.id, name: 'Sulphur', correct:false)
answer3_7_1 = Answer.create(question_id: question7_1.id, name: 'Oxygen', correct:false)
#question8 from deck 1 options 1,2 and 3.
answer1_8_1 = Answer.create(question_id: question8_1.id, name: 'Isomers', correct:false)
answer2_8_1 = Answer.create(question_id: question8_1.id, name: 'Allotropes', correct:true)
answer3_8_1 = Answer.create(question_id: question8_1.id, name: 'Isotopes', correct:false)
#question9 from deck 1 options 1,2 and 3.
answer1_9_1 = Answer.create(question_id: question9_1.id, name: 'Cerium', correct:false)
answer2_9_1 = Answer.create(question_id: question9_1.id, name: 'Lithium', correct:false)
answer3_9_1 = Answer.create(question_id: question9_1.id, name: 'Francium', correct:true)
#question10 from deck 1 options 1,2 and 3.
answer1_10_1 = Answer.create(question_id: question10_1.id, name: 'Sodium', correct:false)
answer2_10_1 = Answer.create(question_id: question10_1.id, name: 'Mercury', correct:false)
answer3_10_1 = Answer.create(question_id: question10_1.id, name: 'Barium', correct:true)

#Questions DECK2
#question1 from deck2
question1_2 = Question.create(deck_id: deck2.id, question: 'If Logx (1 / 8) = - 3 / 2, then x is equal to')#Answer = 4
#question2 from deck 2
question2_2 = Question.create(deck_id: deck2.id, question: '20 % of 2 is equal to')#Answer = 0.4
#question3 from deck 2
question3_2 = Question.create(deck_id: deck2.id, question: 'If Log 4 (x) = 12, then log 2 (x / 4) is equal to ')#Answer = 22
#question4 from deck 2
question4_2 = Question.create(deck_id: deck2.id, question: 'How many minutes are in one week?')#Answer = 10,080
#question5 from deck 2
question5_2 = Question.create(deck_id: deck2.id, question: 'The three solutions of the equation f(x) = 0 are -2, 0, and 3. Therefore, the three solutions of the equation f(x - 2) = 0 are ')#Answer = 0, 2 and 5 
#question6 from deck 2
question6_2 = Question.create(deck_id: deck2.id, question: 'Five different books (A, B, C, D and E) are to be arranged on a shelf. Books C and D are to be arranged first and second starting from the right of the shelf. The number of different orders in which books A, B and E may be arranged is ')#Answer = 3!
#question7 from deck 2
question7_2 = Question.create(deck_id: deck2.id, question: 'The period of 2 sin x cos x is ')#Answer = pi
#question8 from deck 1
question8_2 = Question.create(deck_id: deck2.id, question: 'What is the square root of 100?')#Answer = 10 
#question9 from deck 2
question9_2 = Question.create(deck_id: deck2.id, question: 'What is 134 x 24: 2456, 3542 or 3216?')#Answer = 3216
#question10 from deck 2
question10_2 = Question.create(deck_id: deck2.id, question: ' What is the next number in the following sequence: 2, 4, 8, 20, 40, 80, 200, 400, ***')#Answer = 800

#DECK2
#question1 from deck2 options 1,2 and 3.
answer1_1_2 = Answer.create(question_id: question1_2.id, name: '4', correct:true)
answer2_1_2 = Answer.create(question_id: question1_2.id, name: '5', correct:false)
answer3_1_2 = Answer.create(question_id: question1_2.id, name: '-4', correct:false)
#question2 from deck2 options 1,2 and 3.
answer1_2_2 = Answer.create(question_id: question2_2.id, name: '0.2', correct:false)
answer2_2_2 = Answer.create(question_id: question2_2.id, name: '0.4', correct:true)
answer3_2_2 = Answer.create(question_id: question2_2.id, name: '1.2', correct:false)
#question3 from deck2 options 1,2 and 3.
answer1_3_2 = Answer.create(question_id: question3_2.id, name: '22', correct:true)
answer2_3_2 = Answer.create(question_id: question3_2.id, name: '20', correct:false)
answer3_3_2 = Answer.create(question_id: question3_2.id, name: '43', correct:false)
#question4 from deck2 options 1,2 and 3.
answer1_4_2 = Answer.create(question_id: question4_2.id, name: '16,000', correct:false)
answer2_4_2 = Answer.create(question_id: question4_2.id, name: '10,080', correct:true)
answer3_4_2 = Answer.create(question_id: question4_2.id, name: '65,000', correct:false)
#question5 from deck2 options 1,2 and 3.
answer1_5_2 = Answer.create(question_id: question5_2.id, name: '3, 4 and 2', correct:false)
answer2_5_2 = Answer.create(question_id: question5_2.id, name: '1, 2 and 4', correct:false)
answer3_5_2 = Answer.create(question_id: question5_2.id, name: '0, 2 and 5', correct:true)
#question6 from deck2 options 1,2 and 3.
answer1_6_2 = Answer.create(question_id: question6_2.id, name: '2!', correct:false)
answer2_6_2 = Answer.create(question_id: question6_2.id, name: '5!', correct:false)
answer3_6_2 = Answer.create(question_id: question6_2.id, name: '3!', correct:true)
#question7 from deck2 options 1,2 and 3.
answer1_7_2 = Answer.create(question_id: question7_2.id, name: '2 pi ', correct:false)
answer2_7_2 = Answer.create(question_id: question7_2.id, name: 'pi', correct:true)
answer3_7_2 = Answer.create(question_id: question7_2.id, name: '4 pi 2', correct:false)
#question8 from deck2 options 1,2 and 3.
answer1_8_2 = Answer.create(question_id: question8_2.id, name: '100', correct:false)
answer2_8_2 = Answer.create(question_id: question8_2.id, name: '0.10', correct:false)
answer3_8_2 = Answer.create(question_id: question8_2.id, name: '10', correct:true)
#question9 from deck2 options 1,2 and 3.
answer1_9_2 = Answer.create(question_id: question9_2.id, name: '3002', correct:false)
answer2_9_2 = Answer.create(question_id: question9_2.id, name: '3216', correct:true)
answer3_9_2 = Answer.create(question_id: question9_2.id, name: '5300', correct:false)
#question10 from deck2 options 1,2 and 3.
answer1_10_2 = Answer.create(question_id: question10_2.id, name: '400', correct:false)
answer2_10_2 = Answer.create(question_id: question10_2.id, name: '80', correct:false)
answer3_10_2 = Answer.create(question_id: question10_2.id, name: '800', correct:true)

#Questions DECK3
#question1 from deck3
question1_3 = Question.create(deck_id: deck3.id, question: 'What battle was fought on June 18th, 1815 in present-day Belgium?')#Answer = The Battle of Waterloo
#question2 from deck3
question2_3 = Question.create(deck_id: deck3.id, question: 'Jean-Paul Sartre and Le Duc Tho both declined to accept what famous international award?')#Answer = The Nobel Prize
#question3 from deck3
question3_3 = Question.create(deck_id: deck3.id, question: 'The first human-made object to land on the moon was launched by what country?')#Answer = The Soviet Union
#question4 from deck3
question4_3 = Question.create(deck_id: deck3.id, question: 'Who was the Prime Minister of Italy during WWII?')#Answer = Benito Amilcare Andrea Mussolin
#question5 from deck3
question5_3 = Question.create(deck_id: deck3.id, question: 'In 1783, the first free flight of a hot air balloon carrying a human occured in what city?')#Answer = Paris, France
#question6 from deck3
question6_3 = Question.create(deck_id: deck3.id, question: 'Founded in 1607, what is considered to be the first permanent English settlement in the New World?')#Answer = Jamestown, Virginia
#question7 from deck3
question7_3 = Question.create(deck_id: deck3.id, question: 'What famous dictator was assasinated on the Ides of March?')#Answer = Julius Caesar
#question8 from deck3
question8_3 = Question.create(deck_id: deck3.id, question: 'What does the Statue of Liberty hold in her right hand?')#Answer = A torch
#question9 from deck3
question9_3 = Question.create(deck_id: deck3.id, question: 'The term "déjà vu" comes from what language?')#Answer = French
#question10 from deck3
question10_3 = Question.create(deck_id: deck3.id, question: 'The Great Pyramid of Giza is located in what Egyptian city?')#Answer = Cairo

#DECK3
#question1 from deck3 options 1,2 and 3.
answer1_1_3 = Answer.create(question_id: question1_3.id, name: 'The Battle of Waterloo', correct: true)
answer2_1_3 = Answer.create(question_id: question1_3.id, name: 'The war of the 100 years', correct:false)
answer3_1_3 = Answer.create(question_id: question1_3.id, name: 'The Liepzig Battle', correct:false)
#question2 from deck3 options 1,2 and 3
answer1_2_3 = Answer.create(question_id: question2_3.id, name: 'The Oscar', correct:false)
answer2_2_3 = Answer.create(question_id: question2_3.id, name: 'The World Cup', correct:false)
answer3_2_3 = Answer.create(question_id: question2_3.id, name: 'The Nobel Prize', correct:true)
#question3 from deck3 options 1,2 and 3
answer1_3_3 = Answer.create(question_id: question3_3.id, name: 'Japan', correct:false)
answer2_3_3 = Answer.create(question_id: question3_3.id, name: 'U.S.A', correct:false)
answer3_3_3 = Answer.create(question_id: question3_3.id, name: 'The Soviet Union', correct:true)
#question4 from deck3 options 1,2 and 3
answer1_4_3 = Answer.create(question_id: question4_3.id, name: 'Adolf Hittler', correct:false)
answer2_4_3 = Answer.create(question_id: question4_3.id, name: 'Benito Amilcare Andrea Mussolin', correct:true)
answer3_4_3 = Answer.create(question_id: question4_3.id, name: 'Sergey Gorvachov', correct:false)
#question5 from deck3 options 1,2 and 3
answer1_5_3 = Answer.create(question_id: question5_3.id, name: 'New York, U.S.A', correct:false)
answer2_5_3 = Answer.create(question_id: question5_3.id, name: 'Paris, France', correct:true)
answer3_5_3 = Answer.create(question_id: question5_3.id, name: 'Berlin, Germany', correct:false)
#question6 from deck3 options 1,2 and 3
answer1_6_3 = Answer.create(question_id: question6_3.id, name: 'The Fortress, New Yersey', correct:false)
answer2_6_3 = Answer.create(question_id: question6_3.id, name: 'Hootson House, Oregon', correct:false)
answer3_6_3 = Answer.create(question_id: question6_3.id, name: 'Jamestown, Virginia', correct:true)
#question7 from deck3 options 1,2 and 3
answer1_7_3 = Answer.create(question_id: question7_3.id, name: 'Abraham Lincoln', correct:false)
answer2_7_3 = Answer.create(question_id: question7_3.id, name: 'Julius Caesar', correct:true)
answer3_7_3 = Answer.create(question_id: question7_3.id, name: 'Zar Nicolas II', correct:false)
#question8 from deck3 options 1,2 and 3
answer1_8_3 = Answer.create(question_id: question8_3.id, name: 'A torch', correct:true)
answer2_8_3 = Answer.create(question_id: question8_3.id, name: 'A book', correct:false)
answer3_8_3 = Answer.create(question_id: question8_3.id, name: 'A gun', correct:false)
#question9 from deck3 options 1,2 and 3
answer1_9_3 = Answer.create(question_id: question9_3.id, name: 'French', correct:true)
answer2_9_3 = Answer.create(question_id: question9_3.id, name: 'Latin', correct:false)
answer3_9_3 = Answer.create(question_id: question9_3.id, name: 'Italian', correct:false)
#question10 from deck3 options 1,2 and 3
answer1_10_3 = Answer.create(question_id: question10_3.id, name: 'Luxor', correct:false)
answer2_10_3 = Answer.create(question_id: question10_3.id, name: 'Guiza', correct:false)
answer3_10_3 = Answer.create(question_id: question10_3.id, name: 'Cairo', correct:true)

#Games
alex_stat = Stat.create(game_id: game1.id, question_id: question1_3.id, answer_id: answer3_1_3.id, correct: 0)
alex_stat = Stat.create(game_id: game1.id, question_id: question2_3.id, answer_id: answer2_2_3.id, correct: 0)
alex_stat = Stat.create(game_id: game1.id, question_id: question3_3.id, answer_id: answer3_3_3.id, correct: 1)
alex_stat = Stat.create(game_id: game1.id, question_id: question4_3.id, answer_id: answer1_4_3.id, correct: 0)
alex_stat = Stat.create(game_id: game1.id, question_id: question5_3.id, answer_id: answer2_5_3.id, correct: 1)
alex_stat = Stat.create(game_id: game1.id, question_id: question6_3.id, answer_id: answer3_6_3.id, correct: 1)
alex_stat = Stat.create(game_id: game1.id, question_id: question7_3.id, answer_id: answer3_7_3.id, correct: 0)
alex_stat = Stat.create(game_id: game1.id, question_id: question8_3.id, answer_id: answer2_8_3.id, correct: 0)
alex_stat = Stat.create(game_id: game1.id, question_id: question9_3.id, answer_id: answer2_9_3.id, correct: 0)
alex_stat = Stat.create(game_id: game1.id, question_id: question10_3.id, answer_id: answer1_10_3.id, correct: 0)

# julia_stat = Stat.create(game_id: game2.id, question_id: question1_2.id, answer_id: answer2_1_2.id, correct: 0)
# julia_stat = Stat.create(game_id: game2.id, question_id: question2_2.id, answer_id: answer2_2_2.id, correct: 1)
# julia_stat = Stat.create(game_id: game2.id, question_id: question3_2.id, answer_id: answer3_3_2.id, correct: 0)
# julia_stat = Stat.create(game_id: game2.id, question_id: question4_2.id, answer_id: answer3_4_2.id, correct: 0)
# julia_stat = Stat.create(game_id: game2.id, question_id: question5_2.id, answer_id: answer2_5_2.id, correct: 0)
# julia_stat = Stat.create(game_id: game2.id, question_id: question6_2.id, answer_id: answer1_6_2.id, correct: 0)
# julia_stat = Stat.create(game_id: game2.id, question_id: question7_2.id, answer_id: answer1_7_2.id, correct: 0)
# julia_stat = Stat.create(game_id: game2.id, question_id: question8_2.id, answer_id: answer3_8_2.id, correct: 1)
# julia_stat = Stat.create(game_id: game2.id, question_id: question9_2.id, answer_id: answer2_9_2.id, correct: 1)
# julia_stat = Stat.create(game_id: game2.id, question_id: question10_2.id, answer_id: answer1_10_2.id, correct: 0)# Este archivo sirve para crear registros de prueba
