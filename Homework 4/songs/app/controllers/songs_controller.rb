class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(req_params)
    if @song.save
      redirect_to @song
    else
      render 'new'
    end
  end

  def edit
    find_params
  end

  def update
    find_params
    if @song.update(req_params)
      redirect_to @song
    else
      render 'edit'
    end
  end

  def show
    find_params
  end

  def destroy
    find_params
    @song.destroy
    redirect_to songs_path
  end

  private

  def find_params
    @song = Song.find(params[:id])
  end

  def req_params
    params.require(:song).permit(:artist, :title, :album)
  end
end
