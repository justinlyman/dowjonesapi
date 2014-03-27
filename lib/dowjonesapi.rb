require "dowjonesapi/version"
require 'net/http'
require 'addressable/uri'
require 'json'
require 'pry'

module Dowjonesapi
  
  URL = "http://betawebapi.dowjones.com/fintech/data/api/v1/quotes/"

  class Quote
    def self.get_quote(symbol)
      uri = Addressable::URI.parse("#{URL}#{symbol}")
      json = Net::HTTP.get(uri)
      result = JSON.parse(json)
    rescue
      result = {:message => 'Something Went wrong'}
    end
  end

end
