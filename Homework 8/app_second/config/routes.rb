Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'
  resources :users, only: :show
  namespace :admin do
  	resources :users, except: %i(edit new create)
  end
end
