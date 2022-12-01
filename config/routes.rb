Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :messages
  resources :users, only: %i[show]
  resources :achievements, only: %i[new create]
  resources :offers, only: %i[new create show index destroy] do
    resources :applications, only: %i[new index create]
  end
  resources :applications, only: %i[index edit update]
end
