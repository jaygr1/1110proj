class SearchController < ApplicationController


  def index
  keys = YAML.load_file('application.yml')
  key = keys['eventful_api_key']
  response = open("http://api.eventful.com/json/events/search?...&location=San+Diego&app_key=#{key}")
  binding.pry
  hash = JSON.load(response)
  @results = hash
  end 


  # def index
  #   attributes = ["zip_code", "category", "free", "kid_friendly"]
  #   new_object = []
  #   attributes.map do |attribute|
  #     if params[attribute] && params[attribute].length > 1
  #       new_object << "&#{attribute}=#{params[attribute]}"
  #     end
  #   end
     
  #    results = EventfulAPI.events(new_object)

  #     @results = results
      
  #     render search_index_path(@results)
   
  # end


 
end