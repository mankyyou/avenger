Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"
  post "/rate" => "rater#create", :as => "rate"
  get "admin" => "admin#index"
  controller :sessions do
    get "login" => :new
    post "login" => :create
    delete "logout" => :destroy
  end
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  get "phanloai/mouse"
  get "phanloai/keyboard"
  get "phanncc/razer"
  get "phanncc/logitech"
  get "phanncc/corsair"
  resources :users
  resources :orders
  # get "store/index"
  resources :line_items
  resources :carts
  resources :brands
  resources :types
  resources :gears
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "store#index", as: "store_index"
end
