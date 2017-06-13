Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :fields

  get "user", to: "users#show"
  get '/search', to: 'fields#index', as: 'search'
  
end
