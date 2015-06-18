class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = get_song
  end

  def new
    @song = Song.new do |song|
      song.artist_id = params[:artist_id] if params[:artist_id]
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
    @song = get_song
  end

  def update
    @song = get_song
    if @song.update_attributes(song_params)
      redirect_to artist_path(@song.artist)
    else
      render "edit"
    end
  end

  def destroy
    get_song.destroy
    redirect_to(:back)
  end

  private
  def get_song
    Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:name, :album, :artist_id)
  end
end
