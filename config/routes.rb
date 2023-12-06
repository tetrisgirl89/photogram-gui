Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:name", { :controller => "users", :action => "show" })


  get("/photos", { :controller => "photos", :action => "index" })
end
