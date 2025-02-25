Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get("/", { :controller => "places", :action => "index" }) 
  get("/places", { :controller => "places", :action => "index" }) 
  get("/places/new", { :controller => "places", :action => "new" })
  get("/places/show", { :controller => "places", :action => "show" })

   resources "places"
   resources "entries"
end
