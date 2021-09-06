class RemoveImageFromRecords < ActiveRecord::Migration[6.1]
  def change
    remove_column :records, :image, :string
  end
end
