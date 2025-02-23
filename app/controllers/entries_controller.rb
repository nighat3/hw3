class EntriesController < ApplicationController

  def new
    
  end


  def create
    @entry = Entry.new

    # assign user-entered form data to Contact's columns
    @entry["name"] = params["name"]
    @entry["date"] = params["date"]
    @entry["notes"] = params["notes"]

    # assign relationship between Contact and Company
    @entry["entry_id"] = params["entry_id"]

    # save Contact row
    @entry.save

    # redirect user
    redirect_to "/entry/#{@entry["entry_id"]}"
    
  end

end
