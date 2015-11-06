require 'yaml'
require 'json'
require 'open-uri'
require 'pry'


class Search

  def self.events(details)
  keys = YAML.load_file('application.yml')
  key = keys['eventful_api_key']
  response = open("http://api.eventful.com/json/events/search?#{details.join}&app_key=#{key}")
  hash = JSON.load(response)
  end
  
end