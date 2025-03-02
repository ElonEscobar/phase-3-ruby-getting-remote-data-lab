# Write your code here
require 'json'
require 'open-uri'
require 'net/http'

class GetRequester
    # URL = self.url
    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        JSON.parse(get_response_body)
    end
end