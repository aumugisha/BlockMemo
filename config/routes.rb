Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get "dashboard", to: "subscriptions#index"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "faq", to: "pages#faq"
  get "ui", to: "pages#ui"
  
  resources :users, only: [:show, :edit, :update] 
  
  
  resources :subscriptions, except: [:edit, :new, :index]
  
  resources :courses, only: [:index, :show] do
    resources :reviews, only: [ :new, :create ]
    resources :chapters, only: [:index, :show]
  end

  resources :chapters, only:[] do
    resources :tests, only: [:edit, :update]
  end
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
