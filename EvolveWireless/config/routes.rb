Rails.application.routes.draw do
  resources :homes
  resources :cell_numbers
  resources :phones
  resources :admins
  resources :users
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'homes/index'
  root 'homes#index'

  direct :main do
    { controller: 'homes', action: 'index', subdomain: 'www' }
  end

end

