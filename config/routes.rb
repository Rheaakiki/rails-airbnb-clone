Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :fields, only: [:index, :show, :create, :new, :update, :destroy]
  get '/search', to: 'fields#index', as: 'search'
end
