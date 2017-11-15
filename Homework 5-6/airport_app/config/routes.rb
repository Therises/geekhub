Rails.application.routes.draw do
  devise_for :users
	root 'countries#index'

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
