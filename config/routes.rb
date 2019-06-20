Rails.application.routes.draw do
  get '/clothes' , to:'clothes#new'
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  get 'clothes/index'
  root 'static_pages#home'
  get  '/home',    to: 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/signup',  to: 'users#new'
  post  '/signup', to: 'users#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/login',   to: 'sessions#new'
  post  '/login', to: 'sessions#create'
  resources :account_activations, only: [:edit]
  resources :clothes
  resources :users
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]

end
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

