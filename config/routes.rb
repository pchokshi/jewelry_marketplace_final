Rails.application.routes.draw do
  devise_for :designers
  devise_for :users
  root 'welcome#home'

  get "/", :controller => "welcome", :action => "home"

#as :user do
#  get 'users/edit', :to => 'pieces#index', :as => :user_root # Rails 3
#end


  # Routes for the Users & Designers resource:
  get "/users", :controller => "users", :action => "index"
  get "/users/:id/rec", :controller => "users", :action => "rec"
  get "/users/:id", :controller => "users", :action => "show"
  get "/my_favorites", :controller => "pieces", :action => "my_favorites"

  get "/designers", :controller => "designers", :action => "index"
  get "/designers/:id", :controller => "designers", :action => "show"

  # Routes for the Favorite resource:
  # CREATE
  get "/favorites/new", :controller => "favorites", :action => "new"
  post "/create_favorite", :controller => "favorites", :action => "create"

  # READ
  get "/favorites", :controller => "favorites", :action => "index"
  get "/favorites/:id", :controller => "favorites", :action => "show"

  # UPDATE
  get "/favorites/:id/edit", :controller => "favorites", :action => "edit"
  post "/update_favorite/:id", :controller => "favorites", :action => "update"

  # DELETE
  get "/delete_favorite/:id", :controller => "favorites", :action => "destroy"
  #------------------------------

  # Routes for the Piece resource:
  # CREATE
  get "/pieces/new", :controller => "pieces", :action => "new"
  post "/create_piece", :controller => "pieces", :action => "create"

  # READ
  get "/pieces", :controller => "pieces", :action => "index"
  get "/pieces/:id", :controller => "pieces", :action => "show"

  # UPDATE
  get "/pieces/:id/edit", :controller => "pieces", :action => "edit"
  post "/update_piece/:id", :controller => "pieces", :action => "update"

  # DELETE
  get "/delete_piece/:id", :controller => "pieces", :action => "destroy"
  #------------------------------


end
