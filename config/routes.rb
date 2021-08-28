Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get "dashboard", to: "subscriptions#index"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "faq", to: "pages#faq"

  resources :users, only: [:show, :edit, :update] 
  
  resources :subscriptions, except: [:edit, :index]
  

  
  
  resources :courses, only: [:index, :show] do
    resources :chapters, only: [:index, :show]
  end

  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
