Rails.application.routes.draw do
  resources :contacts
  get 'favorites/index'
  get 'sessions/new'
  resources :users, only: [:new, :create, :show, :edit, :update]
  resources :sessions, only: [:new, :create, :destroy]
end
