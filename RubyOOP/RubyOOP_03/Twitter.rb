require 'open-uri'
require 'nokogiri'

class TwitterScrapper
  def initialize
    @url = Nokogiri::HTML(open('https://twitter.com/Cristiano?lang=es'))
    
  end

  def extract_username
    profile_name = @url.search(".ProfileHeaderCard-name > a")
    puts "Username : #{profile_name.first.inner_text}"
    puts '-'*40
  end

  def extract_stats
  string = ""
  tweets_saved = @url.search('.ProfileNav-value')[0].inner_text
  string << "Tweets : #{tweets_saved}|\t"
  tweets_saved = @url.search('.ProfileNav-value')[1].inner_text
  string << "Following : #{tweets_saved}|\t"
  tweets_saved = @url.search('.ProfileNav-value')[2].inner_text
  string << "Followers : #{tweets_saved}|\t"
  puts string.gsub(/\s+/, " ").strip
  puts '-'*40
  end
  def extract_tweets
    tweet = []
    stat = []
    array = []
    stat_real = []
    tweets = @url.search('.js-tweet-text-container').inner_text
    tweet << tweets
    puts tweet
  end
end

page_web = TwitterScrapper.new
page_web.extract_username
page_web.extract_stats
page_web.extract_tweets

