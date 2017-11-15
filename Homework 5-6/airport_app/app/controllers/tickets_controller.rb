class TicketsController < ApplicationController
	def create
		find_passenger
		@ticket = @passenger.tickets.create(ticket_params)
		redirect_to passenger_path(@passenger)
	end
	def edit
		find_ticket
	end
	def update
		find_ticket
		if @ticket.update(ticket_params)
			redirect_to passenger_path(@ticket.passenger_id)
		else
			render 'edit'
		end
	end
	def show
		find_ticket
		@passenger = @ticket.passenger.name
	
	end

	def destroy
		find_ticket
		@ticket.destroy
		redirect_back fallback_location: countries_path
	end
	private
		def find_ticket
			@ticket = Ticket.find(params[:id])
		end
		def ticket_params
			params.require(:ticket).permit(:name, :avatar)
		end
		def find_passenger
			@passenger = Passenger.find(params[:passenger_id])
		end
end
