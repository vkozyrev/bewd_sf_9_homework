class ArtistsController < ApplicationController

  before_action :get_artist, only: [:update, :edit, :show, :destroy]

  def index
    @artists = Artist.all
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
  end

  def edit
  end

  def update
    if @artist.update_attributes(artist_params)
      redirect_to artist_path(@artist)
    else
      render "edit"
    end
  end

  def destroy
    @artist.destroy
    redirect_to(:back)
  end

  private

  def get_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :record_label_id)
  end

end
