Rails.application.routes.draw do

  get 'calculator/index'

  get 'calculator/new'

  post 'calculator/calculate'

  root 'calculator#index'

  get 'calculator/Input2'

  get 'calculator/Start'

  get 'calculator/Sub'

  get 'calculator/Add'

  get 'calculator/Total'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
