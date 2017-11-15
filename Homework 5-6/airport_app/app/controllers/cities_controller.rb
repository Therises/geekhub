class CitiesController < ApplicationController
	def create
		find_country
		@city = @country.cities.create(city_params)
		redirect_to country_path(@country)
	end
	def edit
		find_city
	end
	def update
		find_city
		if @city.update(city_params)
			redirect_to country_path(@city.country_id)
		else
			render 'edit'
		end
	end
	def show
		find_city
		@airports = @city.airports.paginate(:page => params[:page], :per_page => 5)		
	end

	def destroy
		find_city
		@city.destroy
		redirect_back fallback_location: countries_path
	end
	private
		def find_city
			@city = City.find(params[:id])
		end
		def city_params
			params.require(:city).permit(:name, :avatar)
		end
		def find_country
			@country = Country.find(params[:country_id])
		end
end
