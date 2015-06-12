class ArtistsController < ApplicationController

def index
	@artists = Artists.all
end

def new
	@artists = Artists.new
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

def artist_params
	params.require(:artist).permit(:fname, :lname, :bio)
end

end
