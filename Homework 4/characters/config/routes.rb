Rails.application.routes.draw do
  resources :characters
  root 'characters#index'
end
