class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def show
    find_params
  end

  def new
    @cat = Cat.new
  end

  def edit
    find_params
  end

  def create
    @cat = Cat.new(params_req)

    if @cat.save
      redirect_to @cat
    else
      render 'new'
    end
  end

  def update
    find_params

    if @cat.update(params_req)
      redirect_to @cat
    else
      render 'update'
    end
  end

  def destroy
    find_params
    @cat.destroy

    redirect_to cats_path
  end

  private

  def params_req
    params.require(:cat).permit(:name, :breed)
  end

  def find_params
    @cat = Cat.find(params[:id])
  end
end
