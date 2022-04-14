require 'pp'
get '/' do
  @rolls = []

  3.times { @rolls << Roll.create }

  @win = "WINNER!!" if @rolls.map! { |roll| roll.value }.uniq.count == 1

  erb :index
end

# QUE HACER?: Convierte esta ruta para que utilice Ajax y si la petición no es
# de Ajax de igual forma sirva.
post '/rolls' do

  @rolls = []

  if params[:value]
    3.times { @rolls << Roll.create({ value: value }) }
  else
    3.times { @rolls << Roll.create }
  end

  @win = "WINNER!!" if @rolls.map! { |roll| roll.value }.uniq.count == 1
 
if request.xhr?
  p "soy XHR"
  erb :_die_roll, layout: false
else
  p "soy HTTP"

  erb :index
  end

end
# "HTTP_X_REQUESTED_WITH"=>"XMLHttpRequest",