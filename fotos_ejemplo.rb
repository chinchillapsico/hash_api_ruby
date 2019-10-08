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
    body = JSON.parse(response.body)
end


data = request('http://jsonplaceholder.typicode.com/photos')[0..10] # Limitamos los resultados a 10
photos = data.map{|x| x['url']}
html = ""
photos.each do |photo|
    html += "<img src=\"#{photo}\">\n"
end
 print File.write('output.html', html)

# ruby fotos_ejemplo.rb