class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    dog_params_find
  end

  def new
    @dog = Dog.new
  end

  def edit
    dog_params_find
  end

  def create
    @dog = Dog.new(dog_params_req)

    if @dog.save
      redirect_to @dog
    else
      render 'new'
    end
  end

  def update
    dog_params_find

    if @dog.update(dog_params_req)
      redirect_to @dog
    else
      render 'edit'
    end
  end

  def destroy
    dog_params_find
    @dog.destroy

    redirect_to dogs_path
  end

  private

  def dog_params_req
    params.require(:dog).permit(:name, :breed)
  end

  def dog_params_find
    @dog = Dog.find(params[:id])
  end
end
