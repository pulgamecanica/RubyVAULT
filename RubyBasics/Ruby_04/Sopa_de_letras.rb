class Board
  @@words = [["POEMA"],
  ["XCXXX"],
  ["XAXXS"], 
  ["XNXAA"], 
  ["XCMXD"], 
  ["XIXXN"], 
  ["ROXXO"], 
  ["XNXXR"]]  
  def initialize

  end

  def vertical(word)
    @word = word    
    result = "encontrado en vertical"
    vertical = []
    @@words 
    (0..4).each do |s| s
      8.times{|x| vertical << @@words[x][0][s]}
    end
    @word.each do |word_to_compare| 
      if vertical.join.include?(word_to_compare) 
       result = word_to_compare 
     end
   end 
   "#{result.to_s} encontrado en vertical"
 end


 def vertical_reverse(word)
   @word = word    
   result = "no se encontro dentro de la sopa"
   vertical = []
   @@words  
   (0..4).each do |s| s
    8.times{|x| vertical << @@words[x][0][s]}
  end
  @word.each do |word_to_compare| 
    if vertical.join.reverse.include?(word_to_compare) 
     result = word_to_compare 
   end
 end 
 "#{result} encontrado en vertical reverso"
end


def horizontal(word)
  @word = word    
  result = "no se encontro dentro de la sopa"
  @@words 
  
  @@words.each do |x| 
    @word.each do |word_to_compare| 
      if x.include?(word_to_compare)
        result = word_to_compare
      end
    end
  end
  "#{result} encontrado en horizontal"
end


def horizontal_reverse(word)
  @word = word    
  result = "no se encontro dentro de la sopa"
  @@words   

  @@words.each do |x| 
    @word.each do |word_to_compare| 
      if x.reverse.include?(word_to_compare)
        result = word_to_compare
      else 
        result = "no se encontro nada horizontalmente al reverso dentro de la sopa"
      end
    end
  end
  result 
end


def diagonal_arriba_der(word)
  @word = word    
  result = "encontrado diagonalmente hacia abajo y hacha la derecha"
  vertical = []
  @@words 
  (0..3).each do |q| 
    5.times{|x| vertical << @@words[x+(q)][0][x]}
  end
  vertical_reverse = vertical.reverse
  @word.each do |word_to_compare| 
    if vertical_reverse.join.include?(word_to_compare) 
      result =  word_to_compare 
    else
      result = "no se encontro nada diagonalmente hacia abajo y hacia la derecha en la sopa"
    end
  end 
  result
end


def diagonal_arriba_iz(word)
  @word = word    
  result = ""
  vertical = []
  @@words  
  @@words_reverse =@@words.reverse
  (0..3).each do |q| 
    5.times{|x| vertical << @@words_reverse[x+(q)][0][x]}
  end
  @word.each do |word_to_compare| 
    if vertical.join.include?(word_to_compare) 
      result =  word_to_compare 
    else
      result = "no se encontro nada diagonalmente hacia abajo y hacia la izquierda en la sopa"
    end
  end 
  "#{result} se encontro diagonalmente hacia abajo y hacia la izquierda en la sopa"
end


def diagonal_abajo_reverse_iz(word)
  @word = word    
  result = "se encontro nada diagonalmente hacia arriba y hacia la izquierda en la sopa"
  vertical = []
  @@words  
  (0..3).each do |q| 
    5.times{|x|  vertical << @@words[x+(q)][0][x]}
  end
  @word.each do |word_to_compare| 
    if vertical.join.include?(word_to_compare) 
      result =  word_to_compare 
    else
      result = "no se encontro nada diagonalmente hacia arriba y hacia la izquierda en la sopa"
    end
  end

  result
end


def diagonal_abajo_reverse_der(word)
  @word = word    
  result = "se encontro nada diagonalmente hacia arriba y hacia la izquierda en la sopa"
  vertical = []
  @@words
  (0..3).each do |q| 
    5.times{|x|  vertical << @@words[x+(q)][0][x]}
  end
  vertical_reverse = vertical.reverse
  @word.each do |word_to_compare| 
    if vertical_reverse.join.include?(word_to_compare) 
      result =  word_to_compare 
    else
      result = "no se encontro nada diagonalmente hacia arriba y hacia la derecha en la sopa"
    end
  end

  result
end


def complete_board(word)
  string = ""
  other_result = []
  result = []
  @@words 
  piezas = @@words

  count=(0..7)
  abc = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

  (0..39).each {|x| string = @@words[count]*("")
    other_result << string[x].gsub(/[X]/, "#{abc[rand(26)]}" )}
    reverse_result = other_result.reverse
    result = Array.new(8) {Array.new(reverse_result.pop(5).reverse)}
    result
    (1..8).each do |num|
      case num
      when 1
        print "\t#{result[0]*("")}\n"
      when 2
        print "\t#{result[1]*("")}\n"
      when 3
        print "\t#{result[2]*("")}\n"
      when 4
        print "\t#{result[3]*("")}\n"
      when 5
        print "\t#{result[4]*("")}\n"
      when 6
        print "\t#{result[5]*("")}\n"
      when 7
       print "\t#{result[6]*("")}\n"
     when 8
      print "\t#{result[7]*("")}\n"
    end
  end
  "El tablero contiene #{word}.length palabras"
end
end

board = Board.new
board.complete_board(["POEMA", "CANCION", "RONDAS", "RIMAS"])
p board.vertical_reverse(["POEMA", "CANCION", "RONDAS", "RIMAS"])
p board.vertical(["POEMA", "CANCION", "RONDAS", "RIMAS"])
p board.horizontal(["POEMA", "CANCION", "RONDAS", "RIMAS"])
p board.horizontal_reverse(["POEMA", "CANCION", "RONDAS", "RIMAS"])
p board.diagonal_arriba_der(["POEMA", "CANCION", "RONDAS", "RIMAS"])
p board.diagonal_arriba_iz(["POEMA", "CANCION", "RONDAS", "RIMAS"])
p board.diagonal_abajo_reverse_iz(["POEMA", "CANCION", "RONDAS", "RIMAS"])
p board.diagonal_abajo_reverse_der(["POEMA", "CANCION", "RONDAS", "RIMAS"])