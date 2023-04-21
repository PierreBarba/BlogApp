Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users

  root to: 'users#index'

  resources :users do
   resources :posts do 
    resources :comments, :likes
   end
  end
  #route api
  namespace :api do
    resources :users do
      resources :posts do 
       resources :comments
    end
   end
  end
end