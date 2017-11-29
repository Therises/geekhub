Rails.application.routes.draw do
  devise_for :users, controllers: {
  	registrations: 'users/registrations'
  }
	root 'countries#index'

	get "/admin" => "admin#index"

	namespace :admin do
		resources :users, only: :destroy
	end

	resources :countries, shallow: true do
		resources :cities, except: [:index, :new] do
			resources :airports, except: [:index, :new] do
				resources :planes, except: [:index, :new] do
					resources :passengers, except: [:index, :new] do
						resources :tickets, except: [:index, :new]
					end
				end
			end
		end
	end
end
