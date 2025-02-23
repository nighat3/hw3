class PlacesController < ApplicationController

  def index
    @places = Place.all

  end


  def show
    #Entry.destoy_all
    #Place.destroy_all
    @place = Place.find_by("id" => params["id"])
    @entries = Entry.where("place_id" => params["id"])

  end


  def new
    @place = Place.new 
    
  end


  def create
    @place = Place.new

    # assign user-entered form data to Post's columns
    @place["name"] = params["name"]

    # save Post row
    @place.save

    # redirect user
    redirect_to "/places/#{@place["id"]}"
  
    
  end
  

end
