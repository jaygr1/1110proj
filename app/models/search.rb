require 'yaml'
require 'json'
require 'open-uri'
require 'pry'


class EventfulAPI

  def self.events(details)
  keys = YAML.load_file('application.yml')
  key = keys['eventful_api_key']
  response = open("http://api.eventful.com/json/events/search?...&location=San+Diego&app_key=#{key}")
  binding.pry
  hash = JSON.load(response)
  end
  
end