class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def create
    @country = Country.new(req_params)
    if @country.save
      redirect_to @country
    else
      render 'new'
    end
  end

  def new
    @country = Country.new
  end

  def edit
    find_params
  end

  def show
    find_params
  end

  def update
    find_params
    if @country.update(req_params)
      redirect_to @country
    else
      render 'edit'
    end
  end

  def destroy
    find_params
    @country.destroy
    redirect_to countries_path
  end

  private

  def find_params
    @country = Country.find(params[:id])
  end

  def req_params
    params.require(:country).permit(:name, :area)
  end
end
