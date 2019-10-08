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
    print body
end
prices = request('https://api.coindesk.com/v1/bpi/historical/close.json')['bpi']


# ruby coin.rb