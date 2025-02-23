class PlacesController < ApplicationController

  def index
    @places = Place.all

  end


  def show
    
  end


  def new
    
  end


  def create
    @place = Place.new

    # assign user-entered form data to Post's columns
    @place["name"] = params["name"]

    # save Post row
    @place.save

    # redirect user
    redirect_to "/places"
    
    
  end
  

end
