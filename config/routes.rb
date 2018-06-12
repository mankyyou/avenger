Rails.application.routes.draw do
  resources :brands
  resources :types
  resources :gears
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "template#template"
end
