Rails.application.routes.draw do
  resources :questions
  resources :categories
  root to: 'pages#index'
  devise_for :users
end
