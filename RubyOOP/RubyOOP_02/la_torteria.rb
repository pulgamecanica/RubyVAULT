class Torta
	attr_accessor :order, :type_torta
	
	def initialize(order, type_torta)
		@order = order
		@type_torta = type_torta
	end

	def my_bag
		@bag = []
		count = 1
		while count <= @order 
			@bag << @type_torta
			count +=1
		end
		@bag
	end

end

class ToTheOven

	def initialize(tortas, time)
		@tortas = tortas
		@time = time
	end

	def cubana(time)#,type_torta)
		tortas = {cubana: 10, otra: 5} 
		if time < 5 #tortas[type_torta.to_sym] * 0.5 
			"cruda, lo sentimos, pero eso le pasa por desesperado!!! porque la cubana estuvo 10 minutos y sólo deberia estar 9 minutos"
		elsif time > 4 && time < 9
			"casi lista, pero no me importa igual no me pago con cambio!! porque la cubana estuvo 10 minutos y sólo deberia estar 9 minutos"
		elsif time == 9
			"perfecta, para su majestad, he aqui la torta perfecta!"
		elsif time > 9 && time < 13
			"un poco quemada, pero no se queje no sea chillon!! porque la cubana estuvo 10 minutos y sólo deberia estar 9 minutos"
		elsif time > 12
			"quemada, uyyy señor pues no me avisa!!! porque la cubana estuvo 10 minutos y sólo deberia estar 9 minutos"	
		end
	end

	def pastor(time) 
		if time < 6 
			"cruda, lo sentimos, pero eso le pasa por desesperado!!! porque la de pastor estuvo 10 minutos y sólo deberia estar 8 minutos"
		elsif time > 5 && time < 8
			"casi lista, pero no me importa igual no me pago con cambio!! porque la de pastor estuvo 10 minutos y sólo deberia estar 8 minutos"
		elsif time == 8
			"perfecta, para su majestad, he aqui la torta perfecta! "
		elsif time > 8 && time < 10
			"un poco quemada, pero no se queje no sea chillon!! porque la de pastor estuvo 10 minutos y sólo deberia estar 8 minutos"	
		elsif time > 9
			"quemada, uyyy señor pues no me avisa!!! porque la de pastor estuvo 10 minutos y sólo deberia estar 8 minutos"
		end
	end

	def milanesa(time)
		if time < 7
			"cruda, lo sentimos, pero eso le pasa por desesperado!!! porque la milanesa estuvo 10 minutos y sólo deberia estar 10 minutos"
		elsif time > 6 && time < 10
			"casi lista, pero no me importa igual no me pago con cambio!! porque la milanesa estuvo 10 minutos y sólo deberia estar 10 minutos"
		elsif time == 10
			"perfecta, para su majestad, he aqui la torta perfecta!"	
		elsif time > 10 && time < 14
			"un poco quemada, pero no se queje no sea chillon!! porque la milanesa estuvo 10 minutos y sólo deberia estar 10 minutos"
		elsif time > 13
			"quemada, uyyy señor pues no me avisa!!! porque la milanesa estuvo 10 minutos y sólo deberia estar 10 minutos"	
		end
	end

	def especial(time)
		if time < 7
			"cruda, lo sentimos, pero eso le pasa por desesperado!!! porque la especial estuvo 10 minutos y sólo deberia estar 10 minutos"
		elsif time >6 && time < 10
			"casi lista, pero no me importa igual no me pago con cambio!! porque la especial estuvo 10 minutos y sólo deberia estar 10 minutos"
		elsif time == 10
			"perfecta, para su majestad, he aqui la torta perfecta! porque la especial estuvo 10 minutos y sólo deberia estar 10 minutos"
		elsif time > 10 && time < 15
			"un poco quemada, pero no se queje no sea chillon!! porque la especial estuvo 10 minutos y sólo deberia estar 10 minutos"
		elsif time > 14
			"quemada, uyyy señor pues no me avisa!!! porque la especial estuvo 10 minutos y sólo deberia estar 10 minutos"
		end
	end
	def resultados
		muchas_o_pocas = ""
		total = @tortas.count
			if total >= 10 
				muchas_o_pocas = "no deberias meter más de 10 tortas, te vas a confundir!!"
			else
				muchas_o_pocas = "bien hecho así podras distribuir bien las tortas en el horno"
		  end
		puts "Metiste #{total} tortas, #{muchas_o_pocas}"
		puts "Entrega las tortas en #{@time} minutos"
		@tortas.each do |valor|
			valor.each do |torta|
			#	cook_torta(@time, torta.type)
				if torta == "cubana"
					puts "La torta cubana quedo #{cubana(@time)} "
				elsif torta == "pastor"
					puts "La torta de pastor quedo #{pastor(@time)} "
				elsif torta == "milanesa"
					puts "La torta de milanesa quedo #{milanesa(@time)} "
				elsif torta == "especial"
					puts "La torta especial quedo #{especial(@time)}"
				end	
			end
		end
	end
end

bag_1 = Torta.new(2, "cubana").my_bag
bag_2 = Torta.new(3, "pastor").my_bag
bag_3 = Torta.new(2, "milanesa").my_bag
bag_4 = Torta.new(1, "especial").my_bag
order = [bag_1, bag_2, bag_3, bag_4]
horno_tortas = ToTheOven.new(order, 10)
horno_tortas.resultados

