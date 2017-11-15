class PassengersController < ApplicationController
	def create
		find_plane
		@passenger = @plane.passengers.create(passenger_params)
		redirect_to plane_path(@plane)
	end
	def edit
		find_passenger
	end
	def update
		find_passenger
		if @passenger.update(passenger_params)
			redirect_to plane_path(@passenger.plane_id)
		else
			render 'edit'
		end
	end
	def show
		find_passenger
		@tickets = @passenger.tickets.paginate(:page => params[:page], :per_page => 5)		
	end

	def destroy
		find_passenger
		@passenger.destroy
		redirect_back fallback_location: countries_path
	end
	private
		def find_passenger
			@passenger = Passenger.find(params[:id])
		end
		def passenger_params
			params.require(:passenger).permit(:name, :avatar)
		end
		def find_plane
			@plane = Plane.find(params[:plane_id])
		end
end
