class CreateRecordLabels < ActiveRecord::Migration
  def change
    create_table :record_labels do |t|
      t.string :label_name
      t.references :artist, index: true

      t.timestamps null: false
    end
    add_foreign_key :record_labels, :artists
  end
end
