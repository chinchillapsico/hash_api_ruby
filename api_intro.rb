require 'uri'
require 'net/http'
require 'json'
url = URI("https://jsonplaceholder.typicode.com/posts")
http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE
request = Net::HTTP::Get.new(url)
request["cache-control"] = 'no-cache'
request["postman-token"] = '5f4b1b36-5bcd-4c49-f578-75a752af8fd5'
response = http.request(request)
body = response.read_body # Cortamos el texto para no imprimir las respuesta completa

results = JSON.parse(body)
puts results.class # Veremos que el resultado es un array
puts results[0] # Mostramos el primer elemento

results.each do |post| #muestra solo títulos
    puts post['title']
end


#ruby api_intro.rb
