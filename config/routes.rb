Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :categories, except: [:destroy]
  resources :articles do
    member do
      patch :complete
    end
  end
end