Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get("/places", { :controller => "places", :action => "index" }) 
  get("/places/new", { :controller => "places", :action => "new" })
  get("/places/show", { :controller => "places", :action => "show" })

  #How do I add entries URLs?


   resources "places"
   resources "entries"
end
