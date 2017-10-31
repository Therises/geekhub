Rails.application.routes.draw do
  resources :paintings
  root 'paintings#index'
end
