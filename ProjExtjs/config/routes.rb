Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :home

  get '/', to: 'home#index'
  post '/login', to: 'home#login'

  get '/main', to: 'main#show'
  post '/logout', to: 'main#logout'

end
