Rails.application.routes.draw do
  resources :homes
  resources :cell_numbers
  resources :phones
  resources :admins
  resources :users
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  direct :main do
    { controller: 'home', action: 'index', subdomain: 'www' }
  end
end
