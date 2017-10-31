class ToysController < ApplicationController
  def index
    @toys = Toy.all
  end

  def create
    @toy = Toy.new(req_params)
    if @toy.save
      redirect_to @toy
    else
      render 'new'
    end
  end

  def new
    @toy = Toy.new
  end

  def edit
    find_params
  end

  def show
    find_params
  end

  def update
    find_params
    if @toy.update(req_params)
      redirect_to @toy
    else
      render 'edit'
    end
  end

  def destroy
    find_params
    @toy.destroy
    redirect_to toys_path
  end

  private

  def find_params
    @toy = Toy.find(params[:id])
  end

  def req_params
    params.require(:toy).permit(:name, :qty)
  end
end
