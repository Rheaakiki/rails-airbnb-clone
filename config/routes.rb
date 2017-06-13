Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :fields

  get "user", to: "users#show"
  #patch "users/:id", to: "users#update"
  #put "users/:id", to: "users#update"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
