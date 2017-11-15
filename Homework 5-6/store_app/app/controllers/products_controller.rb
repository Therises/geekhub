class ProductsController < ApplicationController
	def create
		@category = Category.find(params[:category_id])
		@product = @category.products.create(product_params)
		redirect_to category_path(@category)
	end
	def edit
		find_product		
	end
	def update
		find_product
		if @product.update(product_params)
			redirect_to	category_path(@product.category_id)
		else
			render 'edit'
		end
	end
	def show
		find_product
		@suppliers = @product.suppliers.paginate(:page => params[:page], :per_page => 2)
	end
	def destroy
		find_product
		@category = @product.category_id
		@product.destroy
		redirect_back fallback_location: category_path(@category)
	end
	private
	def find_product
		@product = Product.find(params[:id])
	end
	def product_params
		params.require(:product).permit(:name, :image)
	end
end
