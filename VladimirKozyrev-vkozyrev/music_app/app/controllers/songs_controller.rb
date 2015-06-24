class SongsController < ApplicationController

  before_action :get_song, only: [:update, :edit, :show, :destroy]

  def index
    puts params
    if params[:search]
      @songs = Song.where("name LIKE ?", params[:search] + "%")
    else
      @songs = Song.all
    end
    @songs
  end

  def show
  end

  def new
    @song = Song.new
    if params[:artist_id]
      @song.artist_id = params[:artist_id]
    end
  end

  def create
    @song = Song.create(song_params)
    if @song.save
      redirect_to artist_path(@song.artist)
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @song.update_attributes(song_params)
      redirect_to artist_path(@song.artist)
    else
      render "edit"
    end
  end

  def destroy
    @song.destroy
    redirect_to(:back)
  end

  private

  def get_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end
end
