require 'uri'
require 'net/http'
require 'json'
def request(url_requested)
    url = URI(url_requested)
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Get.new(url)
    request["Cache-Control"] = 'no-cache'
    request["Postman-Token"] = 'fa0e5b4a-32fb-4ee0-afc1-4c2ff90eedde'
    response = http.request(request)
     puts JSON.parse(response.body)
end

request('http://jsonplaceholder.typicode.com/posts')


#ruby metodo_api.rb
    