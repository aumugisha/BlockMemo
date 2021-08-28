Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  resources :users, only: [:show, :edit, :update] 
  get "dashboard", to: "subscriptions#index"
  resources :subscriptions, except: [:edit, :index]

  
  
  resources :courses, only: [:index, :show] do
    resources :chapters, only: [:index, :show]
  end

  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
