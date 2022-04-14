class Tortas
  attr_accessor :torta
  def initialize(torta)
    @torta = torta

  end
end
class Order
  attr_accessor :time
  def initialize(num_tortas, type_torta)
    @order_tortas = []
    @num_tortas = num_tortas
    @type_torta = type_torta
  end
  def torta_to_order
    for i in 0..@num_tortas - 1
      @order_tortas << Tortas.new(@type_torta)
    end
    @order_tortas
  end

end
class Oven
  attr_accessor :time
  def initialize(order_tortas, time)
    @order_tortas = order_tortas
    @time = time
  end
  def cook_order
    @reporte = []
    @order_tortas.each do |torta|
      if @time > 0 && @time < 3
        @reporte << "Cruda #{torta.torta}"
      elsif @time >= 3 && time < 7
        @reporte << "La torta no esta perfecta #{torta.torta}"
      elsif @time >= 7 && @time <= 10
        @reporte << "La torta esta perfecta #{torta.torta}"
        else
          @reporte << "Se quemo la torta  #{torta.torta}" 
      end
      @time = rand(1..12)
    end
    @reporte
  end  
  def reporte_tortas
    crudas = 0
    casi_perfecta = 0
    perfecta = 0
    quemada = 0 
    @reporte.each do |torta|
      if torta.include? "Cruda"
        crudas += 1
      elsif torta.include? "no esta perfecta"
        casi_perfecta += 1
      elsif torta.include? "esta perfecta"
        perfecta += 1
      elsif torta.include? "Se quemo"
        quemada += 1
      end   
    end
    puts "total de tortas: #{crudas + casi_perfecta + perfecta + quemada}"
    puts "Crudas: #{crudas}"
    puts "Casi perfectas: #{casi_perfecta}"
    puts "Perfecta: #{perfecta}"
     puts "Quemadas: #{quemada}"
  end

end

bandeja_tortas = Order.new(3, "Pavo")
bandeja_tortas_pollo = Order.new(5, "Pollo")
bandeja_tortas_salchicha = Order.new(3, "Salchicha")
bandeja2 = bandeja_tortas_pollo.torta_to_order
bandeja1 = bandeja_tortas.torta_to_order
bandeja3 = bandeja_tortas_salchicha.torta_to_order
horno = Oven.new(bandeja1 + bandeja2 + bandeja3, 10)
horno.cook_order
horno.reporte_tortas
