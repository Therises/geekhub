class CountriesController < ApplicationController
	def index
		@countries = Country.paginate(:page => params[:page], :per_page => 5)
	end
	def new
		@country = Country.new
	end
	def create
		@country = Country.new(country_params)
		if @country.save
			redirect_to @country
		else
			render 'new'
		end
	end
	def edit
		find_country		
	end
	def update
		find_country
		if @country.update(country_params)
			redirect_to @country
		else
			render 'edit'
		end
	end
	def show
		find_country
		@cities = @country.cities.paginate(:page => params[:page], :per_page => 5)
	end
	def destroy
		find_country
		@country.destroy
		redirect_to root_path
	end
	private
	def find_country
		@country = Country.find(params[:id])
	end
	def country_params
		params.require(:country).permit(:name, :avatar)
	end
end
