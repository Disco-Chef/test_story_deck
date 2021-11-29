Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :businesses do
    resources :stories, only: [:new, :create]
  end
  resources :stories, only: [:edit, :update, :destroy, :show, :index]
  resources :creators
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
