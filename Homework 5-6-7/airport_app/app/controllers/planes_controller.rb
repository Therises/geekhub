class PlanesController < ApplicationController
	def create
		find_airport
		@plane = @airport.planes.create(plane_params)
		redirect_to airport_path(@airport)
	end
	def edit
		find_plane
	end
	def update
		find_plane
		if @plane.update(plane_params)
			redirect_to airport_path(@plane.airport_id)
		else
			render 'edit'
		end
	end
	def show
		find_plane
		@passengers = @plane.passengers.paginate(:page => params[:page], :per_page => 5)		
	end

	def destroy
		find_plane
		@plane.destroy
		redirect_back fallback_location: countries_path
	end
	private
		def find_plane
			@plane = Plane.find(params[:id])
		end
		def plane_params
			params.require(:plane).permit(:name, :avatar)
		end
		def find_airport
			@airport = Airport.find(params[:airport_id])
		end
end
