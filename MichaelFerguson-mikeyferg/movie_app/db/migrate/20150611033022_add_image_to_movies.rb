class AddImageToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :movie_image, :string
    add_column :movies, :available, :boolean
  end
end
