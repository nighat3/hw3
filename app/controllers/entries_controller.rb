class EntriesController < ApplicationController


  def new

  end
  

  def create
    
    @entry = Entry.new
    @place = Place.find_by("id" => params["id"])

    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]


    # assign relationship between Entry and Place
    @entry["place_id"] = params["place_id"]

    # save Contact row
    @entry.save

    # redirect user
    redirect_to "/places/#{@entry["place_id"]}"
    
  end

end
