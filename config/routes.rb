Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create] do
      resources :bookshelves, except: [:edit, :new]
    end
    resources :books, only: [:index, :show, :create, :update, :destroy]
    resources :authors, only: [:index, :show, :create]
    resource :sessions, only: [:create, :destroy]
  end

  root to: 'static_pages#root'
end
