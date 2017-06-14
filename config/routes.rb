Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/search", to: "fields#index", as: "search"
  resources :fields, only: [:index, :show, :create, :new, :update, :destroy] do
  resources :bookings


end
get "/user/:id/profile", to: "users#show" , as: "user_profile"
end
