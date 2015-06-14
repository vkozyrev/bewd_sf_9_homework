class RemoveArtistFromRecordLabels < ActiveRecord::Migration
  def change
    remove_column :record_labels, :artist_id, :integer
  end
end
