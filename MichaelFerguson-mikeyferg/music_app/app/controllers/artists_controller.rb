class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end
  def create
    @artist = Artist.create(artist_params)
    redirect_to artists_path
  end

  def show
    @artist = find_artist
  end

  def edit
    @artist = find_artist
  end
  def update
    @artist = find_artist
    @artist.update_attributes(artist_params)
    redirect_to artists_path
  end

  def destroy
    @artist = find_artist
    @artist.songs.destroy
    @artist.destroy

    redirect_to artists_path
  end
  private
  def artist_params
    params.require(:artist).permit(:name)
  end

  def find_artist
    @artist = Artist.find(params[:id])
  end
end
