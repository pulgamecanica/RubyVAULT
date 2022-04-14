get '/' do
  erb :index
end

post '/new_word' do
  redirect to ("/#{params[:user_word]}")
end

get '/:new_word' do
  @new_word = params[:new_word]
  @canonical = Word.canonical(@new_word)
  erb :word
end

# 1.- get y post son métodos de Sinatra
# 2.- Como buena práctica pero no forzosamente Un Get RENDERIZA un HTML (erb)
# un Post REDIRIGE a un GET.
# 3.- El post y el get