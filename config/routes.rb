Rails.application.routes.draw do
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"
  devise_for :chipus
  get "charts/index"
  get "charts/show"
  resources :orders
  # get "store/index"
  resources :line_items
  resources :carts
  resources :brands
  resources :types
  resources :gears
  get "sessions/new"
  get "sessions/create"
  get "sessions/destroy"
  get "phanloai/mouse"
  get "phanloai/keyboard"
  get "phannsx/razer"
  get "phannsx/logitech"
  get "phannsx/corsair"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "store#index", as: "store_index"
end
