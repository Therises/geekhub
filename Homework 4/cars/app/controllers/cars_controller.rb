class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def create
    @car = Car.new(req_params)

    if @car.save
      redirect_to @car
    else
      render 'new'
    end
  end

  def new
    @car = Car.new
  end

  def edit
    find_params
  end

  def show
    find_params
  end

  def update
    find_params

    if @car.update(req_params)
      redirect_to @car
    else
      render 'edit'
    end
  end

  def destroy
    find_params
    @car.destroy
    redirect_to '/cars'
  end

  private

  def find_params
    @car = Car.find(params[:id])
  end

  def req_params
    params.require(:car).permit(:manufacturer, :model, :yop)
  end
end
