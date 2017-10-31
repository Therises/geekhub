class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(req_params)
    if @product.save
      redirect_to @product
    else
      render 'new'
    end
  end

  def edit
    find_params
  end

  def update
    find_params
    if @product.update(req_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def show
    find_params
  end

  def destroy
    find_params
    @product.destroy
    redirect_to products_path
  end

  private

  def find_params
    @product = Product.find(params[:id])
  end

  def req_params
    params.require(:product).permit(:name, :price, :qty)
  end
end
