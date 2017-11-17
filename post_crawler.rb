require "nokogiri"
require "rest-client"

url = "http://ticket.melon.com/csoon/ajax/listTicketOpen.htm"

params = {
  "orderType" => 0,
  "pageIndex" => 11,
  "schText" => ""
}

puts RestClient.post(url, params)
puts RestClient.post(url, params).class
