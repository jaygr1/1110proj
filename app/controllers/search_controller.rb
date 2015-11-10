require 'open-uri'

class SearchController < ApplicationController


  def index
    user_search = ["keywords", "location"]
    new_object = []
    user_search.map do |search|
      if params[search] && params[search].length > 1
        new_object << "&#{search}=#{params[search]}"
      end
      @results = Search.events(new_object)    
    end 
  end

 
end


