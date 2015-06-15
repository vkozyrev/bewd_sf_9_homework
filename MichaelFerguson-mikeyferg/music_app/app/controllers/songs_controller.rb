class SongsController < ApplicationController

  def index
    @songs = Song.all
    @artists = Artist.all
  end

  def edit
    @song = song_find
  end

  def update
    @song = song_find
    @song.update_attributes(song_params)
    redirect_to artists_path
  end

  def destroy
    @song = song_find
    @song.destroy
    redirect_to artists_path
  end
  def new
    @song = Song.new do |song|
      song.artist_id  = params[:id]
    end
  end
  def create
    @song = Song.create(song_params)
    if @song.save
      redirect_to songs_path
    else
      render 'new'
    end
  end

  private
  def song_params
    params.require(:song).permit(:name, :released, :artist_id)
  end
  def song_find
    Song.find(params[:id])
  end
end
