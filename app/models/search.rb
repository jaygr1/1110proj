require 'yaml'
require 'json'
require 'open-uri'
require 'pry'

class Search
  def self.events(details)
  # keys = ENV[""]
  # key = keys['eventful_api_key']

  response = open("http://api.eventful.com/json/events/search?#{details.join}&t=This+Weekend&app_key=#{ENV['eventful_api_key']}")
  hash = JSON.load(response)
  end
end