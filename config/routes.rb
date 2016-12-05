Rails.application.routes.draw do

  root "properties#index"
  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  # Routes for the Maintenance resource:
  # CREATE
  get "/maintenances/new", :controller => "maintenances", :action => "new"
  post "/create_maintenance", :controller => "maintenances", :action => "create"

  # READ
  get "/maintenances", :controller => "maintenances", :action => "index"
  get "/maintenances/:id", :controller => "maintenances", :action => "show"

  # UPDATE
  get "/maintenances/:id/edit", :controller => "maintenances", :action => "edit"
  post "/update_maintenance/:id", :controller => "maintenances", :action => "update"

  # DELETE
  get "/delete_maintenance/:id", :controller => "maintenances", :action => "destroy"
  #------------------------------

  # Routes for the Property resource:
  # CREATE
  get "/properties/new", :controller => "properties", :action => "new"
  post "/create_property", :controller => "properties", :action => "create"

  # READ
  get "/properties", :controller => "properties", :action => "index"
  get "/properties/:id", :controller => "properties", :action => "show"

  # UPDATE
  get "/properties/:id/edit", :controller => "properties", :action => "edit"
  post "/update_property/:id", :controller => "properties", :action => "update"

  # DELETE
  get "/delete_property/:id", :controller => "properties", :action => "destroy"
  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
