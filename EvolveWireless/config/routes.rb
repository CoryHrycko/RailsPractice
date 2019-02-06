Rails.application.routes.draw do
  resources :cell_numbers
  resources :phones
  resources :admins
  resources :users
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
