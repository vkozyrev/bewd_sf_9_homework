class SongsController < ApplicationController

  http_basic_authenticate_with name: "bewd", password: "bewd", except: [:index, :show]

def index
  @songs = Song.all
end

  def new
  	@song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      @artist = @song.artist
      redirect_to artist_path(@artist)
    else
      render :new
    end
  end

  # def create
  # 	@artist = Artist.find(params[:artist_id])
  # 	@song = @artist.songs.create(song_params)
  # 	redirect_to artist_path(@artist)
  # end

  def edit
  	@song = Song.find(params[:id])
  end

  def update
  	@song = Song.find(params[:id])

  	if @song.update(song_params)
  		redirect_to song_path
      # redirect_to artist_song_path(@song)
  	else
  		render 'edit'
  	end
  end

  def show
  	@song = Song.find(params[:id])
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    redirect_to songs_path
     	# @artist = Artist.find(params[:artist_id])
      # @song = @artist.songs.find(params[:id])
      # @song.destroy
      # redirect_to artist_path(@artist)
  end

private

def song_params
	params.require(:song).permit(:title, :year_released, :artist_id, :song_url)
end

end
