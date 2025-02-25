class PlacesController < ApplicationController

  def index
    @places = Place.all

  end


  def show
   
    @place = Place.find_by("id" => params["id"])
    @entries = Entry.where("place_id" => params["id"])

  end


  def new
    #@place = Place.new 
    
    
  end


  def create
    @place = Place.new

    @place["name"] = params["name"]

    # save row
    @place.save

    # redirect user
    redirect_to "/places/#{@place["id"]}"
  
    
  end
  

end
