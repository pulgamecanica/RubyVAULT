line = '609238745274561398853947621486352179792614583531879264945723816328196457167485932'
 board = line.scan(/./).each_slice(9).to_a
 board.each { |x| puts "#{x}\n"}

box_1 = []
 for row in 0..2
   for col in 0..2
      board.each_with_index do
        box_1 << board[row][col]
      end
    end
  end

def horizontal_m(ind_a, ind_b,tablero, miss)
  find =[]
  option = []
  for ind_a in 0..8
    find <<  tablero[ind_a][ind_b]
  end
  miss.each do |x|
    find.include?(x) == false
    option << x
  end
  p option
end

digits = ("1".."9").to_a
missing =  digits - box_1

count = 0
match = []
missing_option = []
zero_index = []
  for i in 0..2 
    for j in 0..2
      if board[i][j] == "0" 
        zero_index << i        
        zero_index << j
      end
    end  
  end
 b1_index = zero_index.each_slice(2).to_a
 p b1_index
 missing.each do |num|
   b1_index.each do |x|
    a = x[0] 
    b = x[1] 
  
      
      if board[a].include?(num) == false
        p num

      end
    end
  end
    p missing_option 


  index_sudoku = []
  board.each_with_index do |row, index_r|
    row.each_with_index do |col, index_c|
     
        index_sudoku << index_r
        index_sudoku << index_c
      end
    end
 
 zeros = index_sudoku.each_slice(2).to_a
index_1 =  zeros.each_slice(9).to_a

