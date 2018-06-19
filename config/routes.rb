Rails.application.routes.draw do
  get 'charts/index'
  get 'charts/show'
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
