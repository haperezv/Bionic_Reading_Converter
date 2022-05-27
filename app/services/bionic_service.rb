require 'uri'
require 'net/http'
require 'openssl'

class BionicService 
    attr_accessor :request, :http
    
    def initialize

        url = URI("https://bionic-reading1.p.rapidapi.com/convert")

        @http = Net::HTTP.new(url.host, url.port)
        @http.use_ssl = true
        @http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        @request = Net::HTTP::Post.new(url)
        @request["content-type"] = 'application/x-www-form-urlencoded'
        @request["X-RapidAPI-Host"] = 'bionic-reading1.p.rapidapi.com'
        @request["X-RapidAPI-Key"] = '957f58fa78mshe60185e1eb5581fp1124c7jsn003ca3cd971a'
    
    end

    def  execute(text = "")
        request.body = "content=#{text}&response_type=html&request_type=html&fixation=1&saccade=10"
        response = http.request(request)
        response.read_body
    end
end