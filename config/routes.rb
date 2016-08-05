Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create]
    resources :books, only: [:index, :show, :create, :update, :destroy]
    resources :authors, only: [:show, :create]
    resource :sessions, only: [:create, :destroy]
  end

  root to: 'static_pages#root'
end
