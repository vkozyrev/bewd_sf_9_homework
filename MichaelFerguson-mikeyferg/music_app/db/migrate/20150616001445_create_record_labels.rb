class CreateRecordLabels < ActiveRecord::Migration
  def change
    create_table :record_labels do |t|

      t.timestamps null: false
    end
  end
end
