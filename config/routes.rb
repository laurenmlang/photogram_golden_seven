Rails.application.routes.draw do

  get("/", { :controller => "photos", :action => "index" })

  # Routes to CREATE photos

  get("/photos/new", { :controller => "photos", :action => "new_form" })
  get("/create_photo", { :controller => "photos", :action => "create_photo" })

  # Routes to READ photos
  get("/photos",           { :controller => "photos", :action => "index" })
  get("/photos/:id",       { :controller => "photos", :action => "show" })

  # Routes to DESTROY photos
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })

  # Routes to UPDATE photos
  get("/photos/:id/edit", { :controller => "photos", :action => "edit_form" })
  get("/edit_photo/:id", { :controller => "photos", :action => "update" })


end
