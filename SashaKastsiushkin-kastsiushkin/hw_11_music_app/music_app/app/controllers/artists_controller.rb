class ArtistsController < ApplicationController
  def index
    if params[:search]
      @artists = Artist.search(params[:search])
    else
      @artists = Artist.all
    end
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    if @artist.save
      redirect_to artist_path(@artist)
    else
      render "new"
    end
  end

  def show
    @artist = get_artist
  end

  def edit
    @artist = get_artist
  end

  def update
    @artist = get_artist
    if @artist.update_attributes(artist_params)
      redirect_to artist_path(@artist)
    else
      render "edit"
    end
  end

  def destroy
    get_artist.songs.destroy_all
    get_artist.destroy
    redirect_to(:back)
  end

  private

  def get_artist
    Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :country, :record_label_id)
  end
end
