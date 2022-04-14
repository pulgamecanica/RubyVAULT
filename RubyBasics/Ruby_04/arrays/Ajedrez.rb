def chessboard
  piezas_importantes = ['♖', '♘', '♗', '♕', '♔', '♗', '♘', '♖']
  piezas_importantes_negras = ['♜', '♞', '♝', '♛', '♚', '♝', '♞', '♜']
  espacios = "\n|\t|\t|\t|\t|\t|\t|\t|\t|"
  (1..8).each do |num|
    case num
    when 1
      piezas_importantes.each {|pieza| print "|#{pieza}\t"}
      puts "|A"
    when 2
      8.times {print "|♙\t"} 
      print "|B"
    when 3
      print espacios + "C"
    when 4
      print espacios + "D"
      
    when 5
      print espacios + "E"
    when 6
      print espacios
      puts "F"
    when 7
      8.times {print "|♟\t"}
      puts "|G"
    when 8
     piezas_importantes_negras.each {|pieza| print "|#{pieza}\t"}
     puts "|H"
     puts " 1\t 2\t 3\t 4\t 5\t 6\t 7\t 8\t"
   end
 end
end
chessboard