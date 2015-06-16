class AddRecordsLabelIdToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :record_label_id, :string
  end
end
