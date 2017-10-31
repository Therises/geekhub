class CharactersController < ApplicationController
  def index
    @chars = Character.all
  end

  def new
    @char = Character.new
  end

  def create
    @char = Character.new(req_params)
    if @char.save
      redirect_to @char
    else
      render 'new'
    end
  end

  def edit
    find_params
  end

  def update
    find_params
    if @char.update(req_params)
      redirect_to @char
    else
      render 'edit'
    end
  end

  def show
    find_params
  end

  def destroy
    find_params
    @char.destroy
    redirect_to characters_path
  end

  private

  def find_params
    @char = Character.find(params[:id])
  end

  def req_params
    params.require(:character).permit(:name, :role)
  end
end
