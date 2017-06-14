Rails.application.routes.draw do

  root to: 'pages#home'
  resources :fields

  get "user", to: "users#show"
  get '/search', to: 'fields#index', as: 'search'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

end
