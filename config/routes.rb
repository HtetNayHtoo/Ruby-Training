Rails.application.routes.draw do
  get 'home/chartview'
  resources :users
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #root to: "welcome#index"
  root "articles#index"

  resources :articles do
    resources :comments
  end

  resources :users, only:[:new, :create]

  get '/login', to: 'sessions#new', as: 'login'
  post '/session', to: 'sessions#create', as: 'sessions'
  delete '/sessions', to: 'sessions#destroy'

  resources :home

end
