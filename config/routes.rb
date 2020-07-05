Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'homepage#home'
  resources :articles
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
  post 'edit',  to:'users#edit'
  resources :users, except: [:new]
end
