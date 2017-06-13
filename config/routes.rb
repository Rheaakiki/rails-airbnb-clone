Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :fields, only: [:index, :show, :create, :new, :update, :destroy] do
  resources :bookings

  end



  get '/search', to: 'fields#index', as: 'search'
end
