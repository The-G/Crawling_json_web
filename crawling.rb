require 'rest-client'
require 'json'

url = "http://webtoon.daum.net/data/pc/webtoon/list_daily_ranking/finished?timeStamp=1510902444663"
result = RestClient.get url
# p result #preview의 결과가 온다!!
# p result.class #RestClient::Response

json_result = JSON.parse(result)
# p json_result
# p json_result.class # hash로 바꿈!!
# p json_result.keys

# p json_result["data"].class # Array 임!!


json_result["data"].each do |result|
  # p result.keys
  artist = result["cartoon"]["artists"].collect {|artist| artist["name"]}
  # p artist
  title = result["title"]
  # p title
  score = result["averageScore"].round(1)
  # p score
  image_url = result["appThumbnailImage"]["url"]
  p "#{title}(#{artist}) / #{score}점, image: #{image_url}"
end
