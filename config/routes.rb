Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :businesses do
    resources :stories, only: [:new, :create, :index]
  end
  resources :stories, only: [:edit, :update, :destroy, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
