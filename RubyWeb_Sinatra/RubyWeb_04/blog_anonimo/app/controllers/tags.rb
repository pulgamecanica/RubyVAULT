get '/search_by_tag' do
  puts "dentro de get /search_by_tag"
  p tag_input = params[:searchtag]
if Tag.find_by(name: tag_input) == nil
# @show_post.each do |x|
#   p "OBJETO #{x}"
# end
   puts "that tag doesent exist"
redirect to '/'
else
   @show_post = Tag.find_by(name: tag_input).posts
   erb :post_tag
end
end
