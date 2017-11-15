class CategoriesController < ApplicationController
	def create
		find_store
		@category = @store.categories.create(category_params)
		redirect_to store_path(@store)
	end
	def edit
		find_category
	end
	def update
		find_category
		if @category.update(category_params)
			redirect_to store_path(@category.store_id)
		else
			render 'edit'
		end
	end
	def show
		find_category
		@products = @category.products.paginate(:page => params[:page], :per_page => 2)
	end
	def destroy
		find_category
		@store = @category.store_id
		@category.destroy
		redirect_back fallback_location: store_path(@store)
	end

	private
	def find_category
		@category = Category.find(params[:id])
	end
	def category_params
		params.require(:category).permit(:name, :image)
	end
	def find_store
		@store = Store.find(params[:store_id])
	end
end
