Rails.application.routes.draw do
  root 'pages#home'
  get 'About', to: 'pages#about'
  resources :articles
end