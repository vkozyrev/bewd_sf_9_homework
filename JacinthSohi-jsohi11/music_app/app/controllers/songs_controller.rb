class SongsController < ApplicationController

def index
	@songs = Song.all
end

def new
	@song = Song.new
end

def create
	@artist = Artist.find(params[:artist_id])
	@song = @artist.songs.create(song_params)
	redirect_to artist_path(@artist)
end

def edit
	@song = Song.find(params[:id])
end

def update
	@song = Song.find(params[:id])

	if @song.update(song_params)
		redirect_to @song
	else
		render 'edit'
	end
end

def show
	@song = Song.find(params[:id])
end

def destroy
   	@artist = Artist.find(params[:artist_id])
    @song = @artist.songs.find(params[:id])
    @song.destroy
    redirect_to artist_path(@artist)
end

private

def song_params
	params.require(:artist).permit(:title, :year_released)
end

end
