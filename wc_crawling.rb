require 'rest-client'

url = 'https://watcha.net/boxoffice.json?page=1&per=19'

headers = {
  cookie: "~~~" # To add
}

puts RestClient.get(url, headers)
