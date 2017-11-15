class SuppliersController < ApplicationController
	def create
		@product = Product.find(params[:product_id])
		@supplier = @product.suppliers.create(supplier_params)
		redirect_to product_path(@product)
	end
	def edit
		find_supplier
	end
	def update
		find_supplier
		if @supplier.update(supplier_params)
			redirect_to product_path(@supplier.product_id)
		else
			render 'edit'
		end
	end
	def show
		find_supplier
		@vendors = @supplier.vendors.paginate(:page => params[:page], :per_page => 2)
	end
	def destroy
		find_supplier
		@product = @supplier.product_id
		@supplier.destroy
		redirect_back fallback_location: product_path(@product)
	end
	private
	def find_supplier
		@supplier = Supplier.find(params[:id])
	end
	def supplier_params
		params.require(:supplier).permit(:name, :image)
	end
end
