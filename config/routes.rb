Rails.application.routes.draw do
  resources :cryptos
  devise_for :users
  #get 'home/index'
  root 'home#index' # this makes home/index home page
  get 'home/about'
  get 'home/lookup'
  post '/home/lookup' => 'home/lookup'
  get 'home/list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
