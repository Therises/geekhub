Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
	root 'stores#index'

	resources :stores, shallow: true do
		resources :categories, except: [:index, :new]  do
			resources :products, except: [:index, :new] do
				resources :suppliers, except: [:index, :new] do
					resources :vendors, except: [:index, :new]
				end
			end
		end
	end
end
