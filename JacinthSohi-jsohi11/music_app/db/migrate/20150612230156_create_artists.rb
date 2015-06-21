class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :fname
      t.string :lname
      t.text :bio

      t.timestamps null: false
    end
  end
end
