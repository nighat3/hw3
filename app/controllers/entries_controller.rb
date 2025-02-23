class EntriesController < ApplicationController

  def index
    @entries = Entry.all
    
  end


  def create
    @entry = Entry.new

    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["occurred_on"] = params["occurred_on"]


    # assign relationship between Contact and Company
    @entry["place_id"] = params["place_id"]

    # save Contact row
    @entry.save

    # redirect user
    redirect_to "/entries/"
    
  end

end
