class AddNameToRecordLabels < ActiveRecord::Migration
  def change
    add_column :record_labels, :name, :string
  end
end
