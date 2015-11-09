require 'open-uri'

class SearchController < ApplicationController


  def index
    user_search = ["location", "keywords"]
    new_object = []
    user_search.map do |search|
        binding.pry
      if params[search] && params[search].length > 1
        new_object << "&#{search}=#{params[search]}"
      end
      @results = Search.events(new_object)    
    end 
  end

  # def randomevent
  #   @results["events"]["event"].collect do |result|
  #     @pulledevents = []
  #     @pulledevents << result 
  #     binding.pry
  #   end
  # end

end


