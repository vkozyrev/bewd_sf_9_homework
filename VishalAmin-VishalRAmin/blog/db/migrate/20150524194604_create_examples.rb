class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :name
      t.boolean :active
      t.integer :age

      t.timestamps null: false
    end
  end
end
