Rails.application.routes.draw do
  root to: "pages#index"
  resources :questions do
    resources :comments, module: :questions
  end
  resources :categories
  devise_for :users
end
