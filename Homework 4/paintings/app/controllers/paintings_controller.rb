class PaintingsController < ApplicationController
  def index
    @paintings = Painting.all
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(req_params)
    if @painting.save
      redirect_to @painting
    else
      render 'new'
    end
  end

  def edit
    find_params
  end

  def update
    find_params
    if @painting.update(req_params)
      redirect_to @painting
    else
      render 'edit'
    end
  end

  def show
    find_params
  end

  def destroy
    find_params
    @painting.destroy
    redirect_to paintings_path
  end

  private

  def find_params
    @painting = Painting.find(params[:id])
  end

  def req_params
    params.require(:painting).permit(:title, :artist, :year)
  end
end
