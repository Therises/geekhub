class StoresController < ApplicationController
	def index
		@stores = Store.paginate(:page => params[:page], :per_page => 2)
	end
	def new
		@store = Store.new
	end
	def create
		@store = Store.new(store_params)
		if @store.save
			redirect_to @store
		else
			render 'new'
		end
	end
	def edit
		find_store
	end
	def update
		find_store
		if @store.update(store_params)
			redirect_to @store
		else
			render 'edit'
		end
	end
	def show
		find_store
		@categories = @store.categories.paginate(:page => params[:page], :per_page => 2)
	end
	def destroy
		find_store
		@store.destroy
		redirect_to root_path
	end

	private
	def find_store
		@store = Store.find(params[:id])		
	end
	def store_params
		params.require(:store).permit(:name, :image)
	end
end
