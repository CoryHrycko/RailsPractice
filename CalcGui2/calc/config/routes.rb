Rails.application.routes.draw do

  get 'calc2/index'

  get 'calc/index'

  get 'say/who'

  get 'say/hello'

  get 'say/goodbye'

  resources :'calc' do
    post :omg, :on => :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
