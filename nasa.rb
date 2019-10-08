require 'uri'
require 'net/http'
require 'openssl'
require 'json'
def request(url_requested)
    url = URI(url_requested)
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(url)
    response = http.request(request)
    body = JSON.parse(response.body)
    

end
def  buid_web_page(photos)
    
    photos_nasa = photos['photos'].map{|x| x['img_src']}
    html = "<html><body></body></html>"
    photos_nasa.each do |photo|
        html += "<ul><li><img style='max-width: 300px; margin-left: 2em;'  src=\"#{photo}\"></li>\n</ul>"
    end
    File.write('fotosmalditas.html', html)
end    
photos = request('https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?sol=20&api_key=b5uYuHyEvTFz4H5p68GnuLEIJHcaoopgRd1dbl7n')

buid_web_page(photos)


# ruby nasa.rb