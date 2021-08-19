Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update] 

  resources :subscriptions, except: [:edit]  
  
  resources :courses, only: [:index, :show] do
    resources :chapters, only: [:index, :show]
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
