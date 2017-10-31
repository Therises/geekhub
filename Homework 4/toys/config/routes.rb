Rails.application.routes.draw do
  resources :toys
  root 'toys#index'
end
