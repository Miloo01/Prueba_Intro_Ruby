require 'uri'
require 'net/http'
require 'openssl'
require 'json'



def request(address,key)
    url = URI(address + key)
    http = Net::HTTP.new(url.host, url.port)
    request = Net::HTTP::Get.new(url)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    Response = http.request(request)


    unless (response.code.to_i / 100) == 2
        return nil
    else
        return JSON.parse(response.read_body)
    end
end        