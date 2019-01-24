Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post '/login', to: 'users#login'
  resources :beans
  resources :coffeeshops
  resources :favorites
  resources :users

end
