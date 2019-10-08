require 'uri'
require 'net/http'
require 'json'
require 'openssl'
url = URI("http://jsonplaceholder.typicode.com/posts")

http = Net::HTTP.new(url.host, url.port)

request = Net::HTTP::Get.new(url)
request["Content-Type"] = 'application/json'
request["User-Agent"] = 'PostmanRuntime/7.15.2'
request["Accept"] = '*/*'
request["Cache-Control"] = 'no-cache'
request["Postman-Token"] = 'f54f8ae6-a233-4bc7-9185-519b2b57133c,ff67ec1a-36ca-4b4e-9e1d-bf253464f16f'
request["Host"] = 'jsonplaceholder.typicode.com'
request["Cookie"] = '__cfduid=d1f1b094e48aa4bc1d0dcd051d33108541564015980'

request["Connection"] = 'keep-alive'
request["cache-control"] = 'no-cache'
request.body = "{\n\t\"title\": \"Post 101\",\n\t\"body\": \"Este es nuestro primer post\",\n\t\"userId\": 1\n\t\n}"

response = http.request(request)
puts response.read_body

# ruby postmandimeksi.rb