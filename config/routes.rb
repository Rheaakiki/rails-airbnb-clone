Rails.application.routes.draw do

  root to: 'pages#home'
  get "/search", to: "fields#index", as: "search"
  resources :fields, only: [:index, :show, :create, :new, :update, :destroy] do
    resources :bookings
  end

  get '/search', to: 'fields#index', as: 'search'
  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get "/user/:id/profile", to: "users#show" , as: "user_profile"

end
