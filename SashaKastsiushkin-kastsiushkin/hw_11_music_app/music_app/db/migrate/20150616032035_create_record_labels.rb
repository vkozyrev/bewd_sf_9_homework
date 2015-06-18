class CreateRecordLabels < ActiveRecord::Migration
  def change
    create_table :record_labels do |t|
      t.string :name
      t.string :image_url

      t.timestamps null: false
    end
  end
end
