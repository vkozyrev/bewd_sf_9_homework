class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.references :record_label, index: true

      t.timestamps null: false
    end
    add_foreign_key :artists, :record_labels
  end
end
