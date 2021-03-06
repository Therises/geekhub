Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  resources :users, only: :show

  namespace :admin do
  	resources :users, except: %i(new edit create)
  end
end
