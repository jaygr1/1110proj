require 'open-uri'

class SearchController < ApplicationController


  def index
    keys = YAML.load_file('application.yml')
    key = keys['eventful_api_key']
    response = open("http://api.eventful.com/json/events/search?...&location=San+Diego&app_key=#{key}")
    hash = JSON.load(response)
    @results = hash
  end 

end


