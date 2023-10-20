Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'api/random_users#show'

  namespace :api do
    resource :random_users, only: :show
  end
end
