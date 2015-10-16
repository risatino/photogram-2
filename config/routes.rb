Rails.application.routes.draw do

  # Routes to CREATE photos
  get "/photos/new", :controller => "photos", :action => "new_form", :as => "new_photo"
  post "/photos", :controller => "photos", :action => "create_row", :as => "photos"

  # Routes to READ photos
  get "/photos/:id", :controller => "photos", :action => "show", :as => "photo"
  get '/photos', :controller => 'photos', :action => "index"

  # Routes to UPDATE photos
  get "/photos/:id/edit", :controller => "photos", :action => "edit_form", :as => "edit_photo"
  patch "/update_photo/:id", :controller => "photos", :action => "update_photo"

  # Route to DESTROY photos
  delete "/delete_photo/:id", :controller => "photos", :action => "destroy"
end
