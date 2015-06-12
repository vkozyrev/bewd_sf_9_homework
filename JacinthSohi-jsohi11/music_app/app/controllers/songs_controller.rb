class SongsController < ApplicationController

def index
	@songs = Songs.all
end

def new
	@songs = Songs.new
end

def create
end

def edit
end

def update
end

def show
end

def destroy
end

private

def song_params
	params.require(:artist).permit(:title, :year_released)
end

end
