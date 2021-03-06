Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  resources :users, only: :show

  namespace :admin do
  	resources :users, except: [:edit, :new, :create]
  end
end