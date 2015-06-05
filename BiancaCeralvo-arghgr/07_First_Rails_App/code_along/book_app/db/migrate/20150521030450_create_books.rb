class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :book_url
      t.integer :price
      t.string :seller_url

      t.timestamps null: false
    end
  end
end
