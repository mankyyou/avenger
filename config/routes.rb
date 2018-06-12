Rails.application.routes.draw do
  resources :gears
  resources :brands
  resources :types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "template#template"
end
