class VendorsController < ApplicationController
	def create
		@supplier = Supplier.find(params[:supplier_id])
		@vendor = @supplier.vendors.create(vendor_params)
		redirect_to supplier_path(@supplier)		
	end
	def edit
		find_vendor
	end
	def update
		find_vendor
		if @vendor.update(vendor_params)
			redirect_to supplier_path(@vendor.supplier_id)
		else
			render 'edit'
		end
	end
	def show
		find_vendor
		@supplier = @vendor.supplier.name
	end
	def destroy
		find_vendor
		@supplier = @vendor.supplier_id
		@vendor.destroy
		redirect_back fallback_location: supplier_path(@supplier)
	end
	private
	def find_vendor
		@vendor = Vendor.find(params[:id])
	end
	def vendor_params
		params.require(:vendor).permit(:name, :image)
	end
end
