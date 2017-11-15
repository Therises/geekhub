class AirportsController < ApplicationController
	def create
		find_city
		@airport = @city.airports.create(airport_params)
		redirect_to city_path(@city)
	end
	def edit
		find_airport
	end
	def update
		find_airport
		if @airport.update(airport_params)
			redirect_to city_path(@airport.city_id)
		else
			render 'edit'
		end
	end
	def show
		find_airport
		@planes = @airport.planes.paginate(:page => params[:page], :per_page => 5)			
	end

	def destroy
		find_airport
		@airport.destroy
		redirect_back fallback_location: countries_path
	end
	private
		def find_airport
			@airport = Airport.find(params[:id])
		end
		def airport_params
			params.require(:airport).permit(:name, :avatar)
		end
		def find_city
			@city = City.find(params[:city_id])
		end
end
