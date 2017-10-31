Rails.application.routes.draw do
  resources :cats

  root 'cats#index'
end
